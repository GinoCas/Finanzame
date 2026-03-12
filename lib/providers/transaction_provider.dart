import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart' as drift;
import '../data/repositories/app_database.dart';
import '../providers/auth_provider.dart';
import '../providers/wallet_provider.dart';
import '../core/constants/enums.dart';

part 'transaction_provider.g.dart';

@riverpod
Stream<List<Transaction>> transactionsStream(TransactionsStreamRef ref) {
  final db = ref.watch(appDatabaseProvider);
  final user = ref.watch(currentUserProvider);
  if (user == null) return const Stream.empty();
  
  // Devuelve la query de transacciones ordenadas por fecha descendente
  return (db.select(db.transactions)
        ..where((t) => t.userId.equals(user.uid))
        ..orderBy([
          (t) => drift.OrderingTerm(expression: t.date, mode: drift.OrderingMode.desc)
        ]))
      .watch();
}

@riverpod
class TransactionNotifier extends _$TransactionNotifier {
  @override
  void build() {}

  Future<void> addTransaction(TransactionsCompanion transaction) async {
    final db = ref.read(appDatabaseProvider);
    await db.into(db.transactions).insert(transaction);
  }

  Future<void> updateTransaction(TransactionsCompanion transaction) async {
    final db = ref.read(appDatabaseProvider);
    await db.update(db.transactions).replace(transaction);
  }

  Future<void> deleteTransaction(String uid) async {
    final db = ref.read(appDatabaseProvider);
    await (db.delete(db.transactions)..where((t) => t.uid.equals(uid))).go();
  }
}

@riverpod
Future<double> totalBalance(TotalBalanceRef ref) async {
  // Un cálculo simple del balance total basado en las transacciones para una moneda base (ARS)
  // Lo ideal es tener un ExchangeRate provider y sumar ambas monedas unificadas.
  final transactions = await ref.watch(transactionsStreamProvider.future);
  
  double total = 0;
  for (final t in transactions) {
    // Si la moneda es USD habría que aplicar la conversión. Lo dejamos simple por ahora.
    if (t.type == TransactionType.income.name) {
      total += t.amount;
    } else if (t.type == TransactionType.expense.name) {
      total -= t.amount;
    }
    // las transferencias no alteran el balance global, solo mueven entre billeteras
  }
  return total;
}
