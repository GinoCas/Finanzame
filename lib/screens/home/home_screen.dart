import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../core/theme/app_theme.dart';
import '../../core/router/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/transactions/add_transaction_bottom_sheet.dart';
import '../../providers/wallet_provider.dart';
import '../../providers/transaction_provider.dart';
import '../../providers/goal_provider.dart';
import '../../widgets/goals/goal_options_bottom_sheet.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(24),
              // Header saludo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Buenos días,', style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary)),
                      Text('Ginoc 👋', style: theme.textTheme.headlineMedium),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.accent.withValues(alpha: 0.2),
                    child: const Icon(Icons.person_rounded, color: AppColors.accent),
                  ),
                ],
              ),
              const Gap(32),

              // Meta principal (placeholder)
              _MainGoalCard(theme: theme),
              const Gap(20),

              // Balance total
              const _BalanceCard(),
              const Gap(24),

              // Metas secundarias
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tus metas', style: theme.textTheme.titleMedium),
                  TextButton(
                    onPressed: () => context.push(AppRoutes.goals),
                    child: const Text('Ver todas'),
                  ),
                ],
              ),
              const Gap(8),
              const _MiniGoalsList(),
              const Gap(24),

              // Resumen del mes
              _MonthlySummaryCard(theme: theme),
              const Gap(20),

              // Accesos rápidos
              Text('Accesos rápidos', style: theme.textTheme.titleMedium),
              const Gap(12),
              _QuickAccessGrid(context),
              const Gap(24),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton.extended(
              heroTag: 'ingreso',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const AddTransactionBottomSheet(),
                );
              },
              backgroundColor: AppColors.income,
              icon: const Icon(Icons.add, color: Colors.white),
              label: const Text('Ingreso', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
            ),
            const Gap(8),
            FloatingActionButton.extended(
              heroTag: 'egreso',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const AddTransactionBottomSheet(),
                );
              },
              backgroundColor: AppColors.expense,
              icon: const Icon(Icons.remove, color: Colors.white),
              label: const Text('Egreso', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}

class _MainGoalCard extends StatelessWidget {
  final ThemeData theme;
  const _MainGoalCard({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.accentDark, AppColors.accent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('🎯', style: TextStyle(fontSize: 28)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Meta principal', style: theme.textTheme.labelSmall?.copyWith(color: Colors.white)),
              ),
            ],
          ),
          const Gap(12),
          Text('Vacaciones en Córdoba', style: theme.textTheme.titleLarge?.copyWith(color: Colors.white)),
          const Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$120.000 / \$500.000', style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70)),
              Text('24%', style: theme.textTheme.labelLarge?.copyWith(color: Colors.white)),
            ],
          ),
          const Gap(10),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: LinearProgressIndicator(
              value: 0.24,
              backgroundColor: Colors.white.withValues(alpha: 0.2),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}

class _BalanceCard extends ConsumerWidget {
  const _BalanceCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final totalBalanceAsync = ref.watch(totalBalanceProvider);
    final walletsAsyncValue = ref.watch(walletsStreamProvider);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Balance total', style: theme.textTheme.titleMedium),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    _CurrencyToggleBtn(label: 'ARS', selected: true),
                    _CurrencyToggleBtn(label: 'USD', selected: false),
                  ],
                ),
              ),
            ],
          ),
          const Gap(16),
          totalBalanceAsync.when(
            data: (balance) => Text('\$ ${balance.toStringAsFixed(2)}', 
                style: theme.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700)),
            loading: () => const CircularProgressIndicator(),
            error: (err, stack) => Text('Error', style: theme.textTheme.displaySmall),
          ),
          const Gap(4),
          walletsAsyncValue.when(
            data: (wallets) => Text('En ${wallets.length} billeteras', style: theme.textTheme.bodySmall),
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class _CurrencyToggleBtn extends StatelessWidget {
  final String label;
  final bool selected;
  const _CurrencyToggleBtn({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? AppColors.accent : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: selected ? Colors.white : AppColors.textSecondary,
        ),
      ),
    );
  }
}

class _MonthlySummaryCard extends StatelessWidget {
  final ThemeData theme;
  const _MonthlySummaryCard({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Marzo 2026', style: theme.textTheme.titleMedium),
          const Gap(16),
          Row(
            children: [
              Expanded(
                child: _SummaryItem(
                  label: 'Ingresos',
                  amount: '\$ 0,00',
                  color: AppColors.income,
                  icon: Icons.arrow_downward_rounded,
                ),
              ),
              Container(width: 1, height: 48, color: AppColors.border),
              Expanded(
                child: _SummaryItem(
                  label: 'Egresos',
                  amount: '\$ 0,00',
                  color: AppColors.expense,
                  icon: Icons.arrow_upward_rounded,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final String label;
  final String amount;
  final Color color;
  final IconData icon;

  const _SummaryItem({
    required this.label,
    required this.amount,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 14),
              const Gap(4),
              Text(label, style: theme.textTheme.labelMedium),
            ],
          ),
          const Gap(6),
          Text(amount, style: theme.textTheme.titleMedium?.copyWith(color: color, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class _QuickAccessGrid extends StatelessWidget {
  final BuildContext ctx;
  const _QuickAccessGrid(this.ctx);

  @override
  Widget build(BuildContext context) {
    final items = [
      ('Historial', Icons.history_rounded, AppRoutes.history),
      ('Metas', Icons.flag_rounded, AppRoutes.goals),
      ('Presupuesto', Icons.pie_chart_rounded, AppRoutes.budget),
      ('Familia', Icons.people_rounded, AppRoutes.familyGroup),
    ];
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: items.map((item) {
        return GestureDetector(
          onTap: () => ctx.go(item.$3),
          child: Column(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: Icon(item.$2, color: AppColors.accent, size: 22),
              ),
              const Gap(6),
              Text(
                item.$1,
                style: const TextStyle(fontSize: 10, color: AppColors.textSecondary, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _MiniGoalsList extends ConsumerWidget {
  const _MiniGoalsList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goalsAsync = ref.watch(goalsStreamProvider);

    return goalsAsync.when(
      data: (goals) {
        if (goals.isEmpty) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.cardLight,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Text('No hay metas activas.', style: TextStyle(color: AppColors.textSecondary)),
            ),
          );
        }

        return SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: goals.length,
            separatorBuilder: (context, index) => const Gap(16),
            itemBuilder: (context, index) {
              final g = goals[index];
              final progress = g.targetAmount > 0 ? (g.currentAmount / g.targetAmount).clamp(0.0, 1.0) : 0.0;
              final color = Color(g.colorValue);

              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => GoalOptionsBottomSheet(goal: g),
                  );
                },
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.card,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(g.icon, style: const TextStyle(fontSize: 20)),
                          const Gap(8),
                          Expanded(
                            child: Text(
                              g.title,
                              style: const TextStyle(fontWeight: FontWeight.w600),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '\$${g.currentAmount.toStringAsFixed(0)} / \$${g.targetAmount.toStringAsFixed(0)}',
                        style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                      ),
                      const Gap(8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: color.withValues(alpha: 0.2),
                          valueColor: AlwaysStoppedAnimation<Color>(color),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => const SizedBox.shrink(),
    );
  }
}

