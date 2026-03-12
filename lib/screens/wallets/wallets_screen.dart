import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/router/app_router.dart';
import '../../core/theme/app_theme.dart';

class WalletsScreen extends ConsumerWidget {
  const WalletsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Billeteras'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('💼', style: TextStyle(fontSize: 64)),
            const SizedBox(height: 16),
            const Text('No tenés billeteras aún',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 16)),
            SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.push(AppRoutes.walletForm);
              },
              icon: const Icon(Icons.add_rounded),
              label: const Text('Agregar Billetera'),
            ),
          ],
        ),
      ),
    );
  }
}
