import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Stream<User?> get authStateChanges => _auth.authStateChanges();
  User? get currentUser => _auth.currentUser;

  /// Inicia sesión con Google. Muestra el selector de cuentas del dispositivo.
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        print('[AuthService] signIn() devolvió null → usuario canceló');
        return null;
      }

      print('[AuthService] cuenta seleccionada: ${googleAccount.email}');
      final GoogleSignInAuthentication googleAuth = await googleAccount.authentication;
      print('[AuthService] accessToken: ${googleAuth.accessToken != null}');
      print('[AuthService] idToken: ${googleAuth.idToken != null}');

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e, stack) {
      print('[AuthService] ERROR en signInWithGoogle: $e');
      print('[AuthService] StackTrace: $stack');
      rethrow;
    }
  }

  Future<void> signOut() async {
    await Future.wait([
      _auth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}
