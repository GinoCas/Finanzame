import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/auth_provider.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/wallets/wallets_screen.dart';
import '../../screens/stats/stats_screen.dart';
import '../../screens/settings/settings_screen.dart';
import '../../screens/history/history_screen.dart';
import '../../screens/goals/goals_screen.dart';
import '../../screens/budget/budget_screen.dart';
import '../../screens/family_group/family_group_screen.dart';
import '../../screens/wallets/wallet_form_screen.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/register_screen.dart';
import '../../widgets/common/main_shell.dart';

abstract class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/';
  static const wallets = '/wallets';
  static const stats = '/stats';
  static const settings = '/settings';
  static const history = '/history';
  static const goals = '/goals';
  static const budget = '/budget';
  static const familyGroup = '/family-group';
  static const walletForm = '/wallet-form';
}

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: AppRoutes.home,
    redirect: (context, state) {
      // Return null -> wait for loading, or perform redirect logic 
      final isAuth = authState.valueOrNull != null;
      final isGoingToAuth = state.matchedLocation == AppRoutes.login || state.matchedLocation == AppRoutes.register;

      if (authState.isLoading) return null; // do nothing while loading

      if (!isAuth && !isGoingToAuth) {
        return AppRoutes.login;
      }
      
      if (isAuth && isGoingToAuth) {
        return AppRoutes.home;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoutes.wallets,
            builder: (context, state) => const WalletsScreen(),
          ),
          GoRoute(
            path: AppRoutes.stats,
            builder: (context, state) => const StatsScreen(),
          ),
          GoRoute(
            path: AppRoutes.settings,
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: AppRoutes.history,
            builder: (context, state) => const HistoryScreen(),
          ),
          GoRoute(
            path: AppRoutes.goals,
            builder: (context, state) => const GoalsScreen(),
          ),
          GoRoute(
            path: AppRoutes.budget,
            builder: (context, state) => const BudgetScreen(),
          ),
          GoRoute(
            path: AppRoutes.familyGroup,
            builder: (context, state) => const FamilyGroupScreen(),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.walletForm,
        builder: (context, state) => const WalletFormScreen(), // Assuming import is added below
      ),
    ],
  );
});
