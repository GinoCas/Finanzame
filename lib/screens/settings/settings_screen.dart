import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_theme.dart';
import 'package:go_router/go_router.dart';
import '../../core/router/app_router.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Más'), centerTitle: false),
      body: ListView(
        children: [
          _SettingsTile(
            icon: Icons.history_rounded,
            label: 'Historial',
            onTap: () => context.go(AppRoutes.history),
          ),
          _SettingsTile(
            icon: Icons.flag_rounded,
            label: 'Metas',
            onTap: () => context.go(AppRoutes.goals),
          ),
          _SettingsTile(
            icon: Icons.pie_chart_rounded,
            label: 'Presupuesto',
            onTap: () => context.go(AppRoutes.budget),
          ),
          _SettingsTile(
            icon: Icons.people_rounded,
            label: 'Grupo Familiar',
            onTap: () => context.go(AppRoutes.familyGroup),
          ),
          const Divider(),
          _SettingsTile(
            icon: Icons.settings_rounded,
            label: 'Ajustes',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SettingsTile({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppColors.accent, size: 20),
      ),
      title: Text(label, style: Theme.of(context).textTheme.titleMedium),
      trailing: const Icon(Icons.chevron_right_rounded, color: AppColors.textDisabled),
      onTap: onTap,
    );
  }
}
