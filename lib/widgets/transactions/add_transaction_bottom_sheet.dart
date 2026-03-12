import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/enums.dart';
import '../../core/theme/app_theme.dart';
import '../../providers/wallet_provider.dart';
import '../../providers/transaction_provider.dart';
import '../../providers/auth_provider.dart';
import '../../data/repositories/app_database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';

class AddTransactionBottomSheet extends ConsumerStatefulWidget {
  const AddTransactionBottomSheet({super.key});

  @override
  ConsumerState<AddTransactionBottomSheet> createState() => _AddTransactionBottomSheetState();
}

class _AddTransactionBottomSheetState extends ConsumerState<AddTransactionBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _noteController = TextEditingController();
  
  TransactionType _selectedType = TransactionType.expense;
  Currency _selectedCurrency = Currency.ars;
  String? _selectedWalletId;

  bool _isLoading = false;

  Future<void> _saveTransaction() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedWalletId == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Seleccioná una billetera')));
      return;
    }
    
    setState(() => _isLoading = true);

    try {
      final user = ref.read(currentUserProvider);
      if (user == null) throw Exception('Usuario no autenticado');
      
      final amount = double.tryParse(_amountController.text) ?? 0.0;
      final note = _noteController.text.trim();

      final newTx = TransactionsCompanion.insert(
        uid: const Uuid().v4(),
        userId: user.uid,
        walletId: _selectedWalletId!,
        type: _selectedType.name,
        currency: _selectedCurrency.name,
        category: TransactionCategory.other.name, // Por ahora default
        amount: amount,
        note: drift.Value(note.isEmpty ? null : note),
        date: DateTime.now(),
        createdAt: DateTime.now(),
      );

      await ref.read(transactionNotifierProvider.notifier).addTransaction(newTx);
      
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
    // Obtenemos billeteras disponibles del usuario
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
              Text(
                'Nuevo Movimiento',
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              SegmentedButton<TransactionType>(
                segments: const [
                  ButtonSegment(value: TransactionType.expense, label: Text('Egreso')),
                  ButtonSegment(value: TransactionType.income, label: Text('Ingreso')),
                  ButtonSegment(value: TransactionType.transfer, label: Text('Transferencia')),
                ],
                selected: {_selectedType},
                onSelectionChanged: (Set<TransactionType> newSelection) {
                  setState(() => _selectedType = newSelection.first);
                },
                style: const ButtonStyle(
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<Currency>(
                      initialValue: _selectedCurrency,
                      decoration: const InputDecoration(labelText: 'Moneda'),
                      dropdownColor: AppColors.cardLight,
                      isExpanded: true,
                      items: Currency.values.map((c) {
                        return DropdownMenuItem(
                          value: c,
                          child: Text(c.name.toUpperCase()),
                        );
                      }).toList(),
                      onChanged: (val) {
                        if (val != null) setState(() => _selectedCurrency = val);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: _amountController,
                      decoration: const InputDecoration(
                        labelText: 'Monto',
                        hintText: '0.00',
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      validator: (val) {
                        if (val == null || val.isEmpty) return 'Requerido';
                        if (double.tryParse(val) == null) return 'Inválido';
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Selector de billetera
              walletsAsyncValue.when(
                data: (wallets) {
                  if (wallets.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('No hay billeteras creadas. Se requiere una para cargar un movimiento.',
                          style: TextStyle(color: AppColors.warning)),
                    );
                  }
                  
                  // Auto-seleccionar la primera billetera si no hay nada seleccionado
                  if (_selectedWalletId == null && wallets.isNotEmpty) {
                    _selectedWalletId = wallets.first.uid;
                  }

                  return DropdownButtonFormField<String>(
                    initialValue: _selectedWalletId,
                    decoration: const InputDecoration(labelText: 'Billetera'),
                    dropdownColor: AppColors.cardLight,
                    isExpanded: true,
                    items: wallets.map((w) {
                      return DropdownMenuItem(
                        value: w.uid,
                        child: Text('${w.icon} ${w.name}'),
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
              const SizedBox(height: 16),
              TextFormField(
                controller: _noteController,
                decoration: const InputDecoration(
                  labelText: 'Nota o descripción',
                  hintText: 'Ej. Supermercado, Alquiler...',
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _isLoading ? null : _saveTransaction,
                child: _isLoading 
                    ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : const Text('Guardar Movimiento'),
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
    _noteController.dispose();
    super.dispose();
  }
}
