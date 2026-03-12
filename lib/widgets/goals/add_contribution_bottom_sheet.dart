import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/enums.dart';
import '../../core/theme/app_theme.dart';
import '../../providers/wallet_provider.dart';
import '../../providers/transaction_provider.dart';
import '../../providers/goal_provider.dart';
import '../../providers/auth_provider.dart';
import '../../data/repositories/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';

class AddContributionBottomSheet extends ConsumerStatefulWidget {
  final Goal goal;
  const AddContributionBottomSheet({super.key, required this.goal});

  @override
  ConsumerState<AddContributionBottomSheet> createState() => _AddContributionBottomSheetState();
}

class _AddContributionBottomSheetState extends ConsumerState<AddContributionBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  String? _selectedWalletId;
  bool _isLoading = false;

  Future<void> _makeContribution() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedWalletId == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Seleccioná una billetera origen')));
      return;
    }

    setState(() => _isLoading = true);

    try {
      final user = ref.read(currentUserProvider);
      if (user == null) throw Exception('Usuario no autenticado');
      
      final amount = double.tryParse(_amountController.text) ?? 0.0;

      // 1. Descontar dinero de la billetera origen (como egreso o transferencia interna)
      final newTx = TransactionsCompanion.insert(
        uid: const Uuid().v4(),
        userId: user.uid,
        walletId: _selectedWalletId!,
        type: TransactionType.transfer.name, // Lo tratamos como transferencia hacia la meta
        currency: widget.goal.currency,
        category: TransactionCategory.savings.name, 
        amount: amount,
        note: drift.Value('Aporte a meta: ${widget.goal.title}'),
        date: DateTime.now(),
        createdAt: DateTime.now(),
      );
      await ref.read(transactionNotifierProvider.notifier).addTransaction(newTx);

      // 2. Sumar el monto a la meta
      final updatedGoal = GoalsCompanion(
        uid: drift.Value(widget.goal.uid),
        currentAmount: drift.Value(widget.goal.currentAmount + amount),
        updatedAt: drift.Value(DateTime.now()),
      );
      await ref.read(goalNotifierProvider.notifier).updateGoal(updatedGoal);

      // 3. Opcional: Registrar la contribución específica (GoalContributions) 
      // si quieremos tener un historial detallado de aportes por meta y por usuario (ej para grupales).
      // Por simplicidad ahora omitimos esta tabla intermedia o la creas en un Future.

      if (mounted) Navigator.pop(context);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al procesar: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final walletsAsyncValue = ref.watch(walletsStreamProvider);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(widget.goal.icon, style: const TextStyle(fontSize: 28)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Aportar a Meta', style: textTheme.titleSmall?.copyWith(color: AppColors.textSecondary)),
                        Text(widget.goal.title, style: textTheme.titleLarge),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              
              TextFormField(
                controller: _amountController,
                decoration: InputDecoration(
                  labelText: 'Monto a aportar (${widget.goal.currency})',
                  hintText: '0.00',
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Requerido';
                  if (double.tryParse(val) == null) return 'Inválido';
                  if (double.parse(val) <= 0) return 'Mayor a cero';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              
              walletsAsyncValue.when(
                data: (wallets) {
                  if (wallets.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('No hay billeteras para extraer los fondos.',
                          style: TextStyle(color: AppColors.warning)),
                    );
                  }
                  
                  if (_selectedWalletId == null && wallets.isNotEmpty) {
                    _selectedWalletId = wallets.first.uid;
                  }

                  return DropdownButtonFormField<String>(
                    initialValue: _selectedWalletId,
                    decoration: const InputDecoration(labelText: 'Billetera origen'),
                    dropdownColor: AppColors.cardLight,
                    isExpanded: true,
                    items: wallets.map((w) {
                      return DropdownMenuItem(
                        value: w.uid,
                        child: Text('${w.icon} ${w.name} - \$${w.balance.toStringAsFixed(0)}'),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() => _selectedWalletId = val);
                    },
                  );
                },
                loading: () => const CircularProgressIndicator(),
                error: (err, stack) => Text('Error al cargar billeteras', style: TextStyle(color: AppColors.expense)),
              ),
              
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _isLoading ? null : _makeContribution,
                child: _isLoading 
                    ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : const Text('Confirmar Aporte'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }
}
