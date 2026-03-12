import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/router/app_router.dart';
import '../../data/repositories/app_database.dart';
import 'add_contribution_bottom_sheet.dart';
import '../../core/theme/app_theme.dart';

class GoalOptionsBottomSheet extends StatelessWidget {
  final Goal goal;
  const GoalOptionsBottomSheet({super.key, required this.goal});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.border,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 24),
          const Text('Acciones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.add_circle_outline, color: AppColors.income),
            title: const Text('Aportar a Meta'),
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => Container(
                  decoration: const BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  ),
                  child: AddContributionBottomSheet(goal: goal),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit_outlined, color: AppColors.textPrimary),
            title: const Text('Editar Meta'),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.goalForm, extra: goal);
            },
          ),
        ],
      ),
    );
  }
}
