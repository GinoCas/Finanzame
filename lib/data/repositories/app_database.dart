import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import '../models/tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Wallets,
  Transactions,
  Goals,
  GoalContributions,
  Budgets,
  SharedExpenses,
  SplitItems,
  FamilyGroups,
  ExchangeRates,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'finanzame_db');
  }

  // ── Wallets ──────────────────────────────────────────────

  Future<List<Wallet>> getAllWallets(String userId) =>
      (select(wallets)..where((w) => w.userId.equals(userId) & w.isArchived.equals(false)))
          .get();

  Stream<List<Wallet>> watchAllWallets(String userId) =>
      (select(wallets)..where((w) => w.userId.equals(userId) & w.isArchived.equals(false)))
          .watch();

  Future<int> insertWallet(WalletsCompanion wallet) =>
      into(wallets).insert(wallet);

  Future<bool> updateWallet(WalletsCompanion wallet) async {
    return await (update(wallets)..where((w) => w.uid.equals(wallet.uid.value))).write(wallet) > 0;
  }

  // ── Transactions ─────────────────────────────────────────

  Stream<List<Transaction>> watchTransactionsForWallet(String walletId) =>
      (select(transactions)
            ..where((t) => t.walletId.equals(walletId))
            ..orderBy([(t) => OrderingTerm.desc(t.date)]))
          .watch();

  Stream<List<Transaction>> watchTransactionsForMonth(String userId, int month, int year) {
    final start = DateTime(year, month, 1);
    final end = DateTime(year, month + 1, 0, 23, 59, 59);
    return (select(transactions)
          ..where((t) =>
              t.userId.equals(userId) &
              t.date.isBetweenValues(start, end))
          ..orderBy([(t) => OrderingTerm.desc(t.date)]))
        .watch();
  }

  Future<int> insertTransaction(TransactionsCompanion txn) =>
      into(transactions).insert(txn);

  // ── Goals ────────────────────────────────────────────────

  Stream<List<Goal>> watchAllGoals(String userId) =>
      (select(goals)
            ..where((g) => g.userId.equals(userId) & g.status.equals('active'))
            ..orderBy([(g) => OrderingTerm.desc(g.createdAt)]))
          .watch();

  Future<int> insertGoal(GoalsCompanion goal) =>
      into(goals).insert(goal);

  Future<bool> updateGoal(GoalsCompanion goal) async {
    return await (update(goals)..where((g) => g.uid.equals(goal.uid.value))).write(goal) > 0;
  }

  // ── Budgets ───────────────────────────────────────────────

  Future<List<Budget>> getBudgetsForMonth(String userId, int month, int year) =>
      (select(budgets)
            ..where((b) =>
                b.userId.equals(userId) &
                b.month.equals(month) &
                b.year.equals(year)))
          .get();

  // ── Exchange Rate ─────────────────────────────────────────

  Future<ExchangeRate?> getLatestExchangeRate() =>
      (select(exchangeRates)..orderBy([(e) => OrderingTerm.desc(e.lastUpdated)])..limit(1))
          .getSingleOrNull();

  Future<int> upsertExchangeRate(ExchangeRatesCompanion rate) =>
      into(exchangeRates).insertOnConflictUpdate(rate);
}
