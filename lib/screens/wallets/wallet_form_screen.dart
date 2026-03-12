import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/enums.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/app_database.dart';
import '../../providers/wallet_provider.dart';
import '../../providers/auth_provider.dart';
import 'package:drift/drift.dart' as drift;
import 'package:uuid/uuid.dart';

// Si 'walletToEdit' es null, se está creando una nueva. Si tiene data, se edita.
class WalletFormScreen extends ConsumerStatefulWidget {
  final Wallet? walletToEdit;

  const WalletFormScreen({super.key, this.walletToEdit});

  @override
  ConsumerState<WalletFormScreen> createState() => _WalletFormScreenState();
}

class _WalletFormScreenState extends ConsumerState<WalletFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _balanceController;
  Currency _selectedCurrency = Currency.ars;
  WalletType _selectedType = WalletType.bankAccount;
  
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.walletToEdit?.name ?? '');
    _balanceController = TextEditingController(
        text: widget.walletToEdit != null ? widget.walletToEdit!.balance.toStringAsFixed(2) : '');
    
    if (widget.walletToEdit != null) {
      // Configurar currency y type si se está editando
      // Para convertir de string a enum se podría usar un helper en el enum
      _selectedCurrency = Currency.values.firstWhere(
        (e) => e.name == widget.walletToEdit!.currency,
        orElse: () => Currency.ars,
      );
      _selectedType = WalletType.values.firstWhere(
        (e) => e.name == widget.walletToEdit!.type,
        orElse: () => WalletType.bankAccount,
      );
    }
  }

  Future<void> _saveWallet() async {
    if (!_formKey.currentState!.validate()) return;
    
    setState(() => _isLoading = true);

    try {
      final user = ref.read(currentUserProvider);
      if (user == null) throw Exception('Usuario no autenticado');
      
      final name = _nameController.text.trim();
      final balance = double.tryParse(_balanceController.text) ?? 0.0;
      final color = AppColors.accent.toARGB32();

      if (widget.walletToEdit == null) {
        final newWallet = WalletsCompanion.insert(
          uid: const Uuid().v4(),
          userId: user.uid,
          name: name,
          type: _selectedType.name,
          currency: _selectedCurrency.name,
          balance: drift.Value(balance),
          colorValue: color,
          createdAt: DateTime.now(),
        );
        await ref.read(walletNotifierProvider.notifier).addWallet(newWallet);
      } else {
        final updatedWallet = WalletsCompanion(
          uid: drift.Value(widget.walletToEdit!.uid),
          name: drift.Value(name),
          type: drift.Value(_selectedType.name),
          currency: drift.Value(_selectedCurrency.name),
          balance: drift.Value(balance),
          updatedAt: drift.Value(DateTime.now()),
        );
        await ref.read(walletNotifierProvider.notifier).updateWallet(updatedWallet);
      }

      if (mounted) context.pop();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al guardar: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(widget.walletToEdit == null ? 'Nueva Billetera' : 'Editar Billetera'),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nombre de cuenta',
                  hintText: 'Ej. Santander, Billetera Física...',
                ),
                validator: (val) {
                  if (val == null || val.trim().isEmpty) return 'Ingresá un nombre';
                  return null;
                },
              ),
              const SizedBox(height: 20),
              
              DropdownButtonFormField<WalletType>(
                initialValue: _selectedType,
                decoration: const InputDecoration(labelText: 'Tipo de cuenta'),
                dropdownColor: AppColors.cardLight,
                isExpanded: true,
                items: WalletType.values.map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(type.label), 
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) setState(() => _selectedType = val);
                },
              ),
              const SizedBox(height: 20),

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
                      controller: _balanceController,
                      decoration: const InputDecoration(
                        labelText: 'Saldo inicial',
                        hintText: '0.00',
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      validator: (val) {
                        if (val != null && val.isNotEmpty && double.tryParse(val) == null) {
                          return 'Monto inválido';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),

              ElevatedButton(
                onPressed: _isLoading ? null : _saveWallet,
                child: _isLoading 
                    ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : Text(widget.walletToEdit == null ? 'Crear' : 'Guardar Cambios'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _balanceController.dispose();
    super.dispose();
  }
}
