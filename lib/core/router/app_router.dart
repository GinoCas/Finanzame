import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/auth_provider.dart';
import '../../data/repositories/app_database.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/wallets/wallets_screen.dart';
import '../../screens/stats/stats_screen.dart';
import '../../screens/settings/settings_screen.dart';
import '../../screens/history/history_screen.dart';
import '../../screens/goals/goals_screen.dart';
import '../../screens/budget/budget_screen.dart';
import '../../screens/family_group/family_group_screen.dart';
import '../../screens/goals/goal_form_screen.dart';
import '../../screens/wallets/wallet_form_screen.dart';
import '../../screens/auth/login_screen.dart';
import '../../widgets/common/main_shell.dart';

abstract class AppRoutes {
  static const login = '/login';
  static const home = '/';
  static const wallets = '/wallets';
  static const stats = '/stats';
  static const settings = '/settings';
  static const history = '/history';
  static const goals = '/goals';
  static const budget = '/budget';
  static const familyGroup = '/family-group';
  static const walletForm = '/wallet-form';
  static const goalForm = '/goal-form';
}

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: AppRoutes.home,
    redirect: (context, state) {
      final isAuth = authState.valueOrNull != null;
      final isGoingToLogin = state.matchedLocation == AppRoutes.login;

      if (authState.isLoading) return null;

      if (!isAuth && !isGoingToLogin) {
        return AppRoutes.login;
      }
      
      if (isAuth && isGoingToLogin) {
        return AppRoutes.home;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
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
        builder: (context, state) => WalletFormScreen(walletToEdit: state.extra as Wallet?), 
      ),
      GoRoute(
        path: AppRoutes.goalForm,
        builder: (context, state) => GoalFormScreen(goalToEdit: state.extra as Goal?),
      ),
    ],
  );
});
