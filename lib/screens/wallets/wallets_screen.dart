import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/router/app_router.dart';
import '../../core/theme/app_theme.dart';
import '../../providers/wallet_provider.dart';

class WalletsScreen extends ConsumerWidget {
  const WalletsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletsAsyncValue = ref.watch(walletsStreamProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Billeteras'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => context.push(AppRoutes.walletForm),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: walletsAsyncValue.when(
        data: (wallets) {
          if (wallets.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('💼', style: TextStyle(fontSize: 64)),
                  const SizedBox(height: 16),
                  const Text('No tenés billeteras aún',
                      style: TextStyle(color: AppColors.textSecondary, fontSize: 16)),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () => context.push(AppRoutes.walletForm),
                    icon: const Icon(Icons.add_rounded),
                    label: const Text('Agregar Billetera'),
                  ),
                ],
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: wallets.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final wallet = wallets[index];
              return ListTile(
                tileColor: AppColors.cardLight,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                leading: CircleAvatar(
                  backgroundColor: Color(wallet.colorValue).withValues(alpha: 0.2),
                  child: Text(wallet.icon, style: const TextStyle(fontSize: 20)),
                ),
                title: Text(wallet.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(wallet.type), // Ideal mapping enum label here
                trailing: Text(
                  '\$${wallet.balance.toStringAsFixed(2)}', 
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                onTap: () {
                  context.push(AppRoutes.walletForm, extra: wallet);
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
