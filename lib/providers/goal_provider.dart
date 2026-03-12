import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/repositories/app_database.dart';
import '../providers/auth_provider.dart';
import '../providers/wallet_provider.dart';

part 'goal_provider.g.dart';

@riverpod
Stream<List<Goal>> goalsStream(GoalsStreamRef ref) {
  final db = ref.watch(appDatabaseProvider);
  final user = ref.watch(currentUserProvider);
  if (user == null) return const Stream.empty();
  
  return (db.select(db.goals)
    ..where((g) => g.userId.equals(user.uid))).watch();
}

@riverpod
class GoalNotifier extends _$GoalNotifier {
  @override
  void build() {}

  Future<void> addGoal(GoalsCompanion goal) async {
    final db = ref.read(appDatabaseProvider);
    await db.into(db.goals).insert(goal);
  }

  Future<void> updateGoal(GoalsCompanion goal) async {
    final db = ref.read(appDatabaseProvider);
    await db.updateGoal(goal);
  }

  Future<void> deleteGoal(String uid) async {
    final db = ref.read(appDatabaseProvider);
    await (db.delete(db.goals)..where((g) => g.uid.equals(uid))).go();
  }
}
