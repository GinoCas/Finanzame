enum Currency {
  ars('ARS', '\$', 'Peso argentino'),
  usd('USD', 'U\$S', 'Dólar estadounidense');

  const Currency(this.code, this.symbol, this.name);
  final String code;
  final String symbol;
  final String name;
}

enum TransactionType {
  income('Ingreso'),
  expense('Egreso'),
  transfer('Transferencia');

  const TransactionType(this.label);
  final String label;
}

enum WalletType {
  cash('Efectivo', '💵'),
  bankAccount('Cuenta Bancaria', '🏦'),
  debitCard('Tarjeta de Débito', '💳'),
  creditCard('Tarjeta de Crédito', '💳'),
  digitalWallet('Billetera Virtual', '📱'),
  investment('Inversión', '📈'),
  savings('Ahorro', '🐷'),
  crypto('Cripto', '₿'),
  other('Otro', '💰');

  const WalletType(this.label, this.emoji);
  final String label;
  final String emoji;
}

enum InvestmentType {
  fixedTerm('Plazo Fijo'),
  stocks('Acciones'),
  bonds('Bonos'),
  mutualFund('Fondo Común'),
  crypto('Cripto'),
  other('Otro');

  const InvestmentType(this.label);
  final String label;
}

enum TransactionCategory {
  food('Comida', '🍔', 1),
  transport('Transporte', '🚗', 2),
  entertainment('Entretenimiento', '🎬', 3),
  health('Salud', '💊', 4),
  education('Educación', '📚', 5),
  services('Servicios', '💡', 6),
  home('Hogar', '🏠', 7),
  clothing('Ropa', '👗', 8),
  work('Trabajo', '💼', 9),
  travel('Viajes', '✈️', 10),
  savings('Ahorro', '🐷', 11),
  investment('Inversión', '📈', 12),
  transfer('Transferencia', '↔️', 13),
  other('Otros', '💫', 14);

  const TransactionCategory(this.label, this.emoji, this.order);
  final String label;
  final String emoji;
  final int order;
}

enum GoalStatus {
  active,
  completed,
  cancelled,
}

enum SharedExpenseStatus {
  pending,
  settled,
}

enum SplitMode {
  equal('Equitativo'),
  exact('Monto exacto'),
  percentage('Porcentaje');

  const SplitMode(this.label);
  final String label;
}

enum ExchangeRateType {
  official('Oficial'),
  blue('Blue'),
  mep('MEP / Bolsa');

  const ExchangeRateType(this.label);
  final String label;
}
