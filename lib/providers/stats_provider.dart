import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'transaction_provider.dart';
import '../core/constants/enums.dart';

part 'stats_provider.g.dart';

class MonthlyStat {
  final int month;
  final int year;
  final double income;
  final double expense;

  MonthlyStat({
    required this.month,
    required this.year,
    required this.income,
    required this.expense,
  });
}

@riverpod
Future<List<MonthlyStat>> lastSixMonthsStats(LastSixMonthsStatsRef ref) async {
  final transactions = await ref.watch(transactionsStreamProvider.future);

  final now = DateTime.now();
  final statsMap = <String, MonthlyStat>{};

  // Inicializar los últimos 6 meses (incluyendo el actual)
  for (int i = 0; i < 6; i++) {
    int month = now.month - i;
    int year = now.year;

    if (month <= 0) {
      month += 12;
      year -= 1;
    }

    final key = '$year-$month';
    statsMap[key] = MonthlyStat(month: month, year: year, income: 0.0, expense: 0.0);
  }

  // Acumular transacciones
  for (final t in transactions) {
    final date = t.date;
    final key = '${date.year}-${date.month}';

    if (statsMap.containsKey(key)) {
      final stat = statsMap[key]!;
      double income = stat.income;
      double expense = stat.expense;

      if (t.type == TransactionType.income.name) {
        income += t.amount;
      } else if (t.type == TransactionType.expense.name) {
        expense += t.amount;
      }

      statsMap[key] = MonthlyStat(
        month: stat.month,
        year: stat.year,
        income: income,
        expense: expense,
      );
    }
  }

  // Ordenar de más antiguo a más reciente
  final stats = statsMap.values.toList()
    ..sort((a, b) {
      if (a.year == b.year) {
        return a.month.compareTo(b.month);
      }
      return a.year.compareTo(b.year);
    });

  return stats;
}
