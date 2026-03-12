import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/enums.dart';
import '../../core/theme/app_theme.dart';
import '../../data/repositories/app_database.dart';
import '../../providers/auth_provider.dart';
import '../../providers/goal_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:drift/drift.dart' as drift;

class GoalFormScreen extends ConsumerStatefulWidget {
  final Goal? goalToEdit;

  const GoalFormScreen({super.key, this.goalToEdit});

  @override
  ConsumerState<GoalFormScreen> createState() => _GoalFormScreenState();
}

class _GoalFormScreenState extends ConsumerState<GoalFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _targetAmountController;
  
  Currency _selectedCurrency = Currency.ars;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.goalToEdit?.title ?? '');
    _targetAmountController = TextEditingController(
        text: widget.goalToEdit != null ? widget.goalToEdit!.targetAmount.toStringAsFixed(2) : '');
    
    if (widget.goalToEdit != null) {
      _selectedCurrency = Currency.values.firstWhere(
        (e) => e.name == widget.goalToEdit!.currency,
        orElse: () => Currency.ars,
      );
    }
  }

  Future<void> _saveGoal() async {
    if (!_formKey.currentState!.validate()) return;
    
    setState(() => _isLoading = true);

    try {
      final user = ref.read(currentUserProvider);
      if (user == null) throw Exception('Usuario no autenticado');

      final title = _titleController.text.trim();
      final target = double.tryParse(_targetAmountController.text) ?? 0.0;

      if (widget.goalToEdit == null) {
        final newGoal = GoalsCompanion.insert(
          uid: const Uuid().v4(),
          userId: user.uid,
          title: title,
          targetAmount: target,
          currency: _selectedCurrency.name,
          colorValue: AppColors.income.toARGB32(),
          createdAt: DateTime.now(),
        );
        await ref.read(goalNotifierProvider.notifier).addGoal(newGoal);
      } else {
        final updatedGoal = GoalsCompanion(
          uid: drift.Value(widget.goalToEdit!.uid),
          title: drift.Value(title),
          targetAmount: drift.Value(target),
          currency: drift.Value(_selectedCurrency.name),
          updatedAt: drift.Value(DateTime.now()),
        );
        await ref.read(goalNotifierProvider.notifier).updateGoal(updatedGoal);
      }

      if (mounted) context.pop();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al crear meta: $e')),
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
      appBar: AppBar(title: Text(widget.goalToEdit == null ? 'Nueva Meta' : 'Editar Meta')),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Título corto de la meta',
                  hintText: 'Ej. Vacaciones, Auto nuevo...',
                ),
                validator: (val) {
                  if (val == null || val.trim().isEmpty) return 'Ingresá un título';
                  return null;
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
                      controller: _targetAmountController,
                      decoration: const InputDecoration(
                        labelText: 'Monto objetivo',
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
                  ),
                ],
              ),
              
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: _isLoading ? null : _saveGoal,
                child: _isLoading 
                    ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : Text(widget.goalToEdit == null ? 'Crear Meta' : 'Guardar Cambios'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _targetAmountController.dispose();
    super.dispose();
  }
}
