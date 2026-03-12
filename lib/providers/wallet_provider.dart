import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/repositories/app_database.dart';
import '../providers/auth_provider.dart';

part 'wallet_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(AppDatabaseRef ref) {
  return AppDatabase();
}

@riverpod
Stream<List<Wallet>> walletsStream(WalletsStreamRef ref) {
  final db = ref.watch(appDatabaseProvider);
  final user = ref.watch(currentUserProvider);
  if (user == null) return const Stream.empty();
  return db.watchAllWallets(user.uid);
}

@riverpod
class WalletNotifier extends _$WalletNotifier {
  @override
  void build() {}

  Future<void> addWallet(WalletsCompanion wallet) async {
    final db = ref.read(appDatabaseProvider);
    await db.insertWallet(wallet);
  }

  Future<void> updateWallet(WalletsCompanion wallet) async {
    final db = ref.read(appDatabaseProvider);
    await db.updateWallet(wallet);
  }
}
