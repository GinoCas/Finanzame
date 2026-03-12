import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_theme.dart';

class GoalsScreen extends ConsumerWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Metas'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🎯', style: TextStyle(fontSize: 64)),
            const SizedBox(height: 16),
            Text('No tenés metas aún', style: TextStyle(color: AppColors.textSecondary, fontSize: 16)),
            SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Abrir form para agregar meta
              },
              icon: const Icon(Icons.add_rounded),
              label: const Text('Agregar Meta'),
            ),
          ],
        ),
      ),
    );
  }
}
