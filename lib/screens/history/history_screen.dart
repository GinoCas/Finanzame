import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_theme.dart';

import '../../providers/transaction_provider.dart';
import '../../core/constants/enums.dart';

class HistoryScreen extends ConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsAsync = ref.watch(transactionsStreamProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Historial'), centerTitle: false),
      body: transactionsAsync.when(
        data: (txs) {
          if (txs.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('📋', style: TextStyle(fontSize: 64)),
                  SizedBox(height: 16),
                  Text('Sin movimientos aún', style: TextStyle(color: AppColors.textSecondary, fontSize: 16)),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: txs.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final tx = txs[index];
              final isIncome = tx.type == TransactionType.income.name;
              final isTransfer = tx.type == TransactionType.transfer.name;
              
              Color color = AppColors.expense;
              IconData icon = Icons.arrow_upward_rounded;
              if (isIncome) {
                color = AppColors.income;
                icon = Icons.arrow_downward_rounded;
              } else if (isTransfer) {
                color = AppColors.accent;
                icon = Icons.swap_horiz_rounded;
              }

              return ListTile(
                tileColor: AppColors.cardLight,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                leading: CircleAvatar(
                  backgroundColor: color.withValues(alpha: 0.2),
                  child: Icon(icon, color: color, size: 20),
                ),
                title: Text(
                  tx.category,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  tx.note ?? 'Sin detalle',
                  style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  '${isIncome ? '+' : '-'}\$${tx.amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isTransfer ? AppColors.accent : (isIncome ? AppColors.income : AppColors.textPrimary),
                    fontSize: 15,
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err', style: const TextStyle(color: AppColors.expense))),
      ),
    );
  }
}
