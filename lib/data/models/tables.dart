import 'package:drift/drift.dart';

/// Tabla de billeteras/cuentas
class Wallets extends Table {
  TextColumn get uid => text().named('uid')();
  TextColumn get userId => text().named('user_id')();
  TextColumn get name => text()();
  TextColumn get type => text()(); // WalletType enum as string
  TextColumn get currency => text()(); // Currency enum as string
  RealColumn get balance => real().withDefault(const Constant(0.0))();
  TextColumn get icon => text().withDefault(const Constant('💰'))();
  IntColumn get colorValue => integer()();
  TextColumn get bankName => text().nullable()();
  BoolColumn get isVisible => boolean().withDefault(const Constant(true))();
  BoolColumn get isArchived => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get firestoreId => text().nullable()();

  @override
  Set<Column> get primaryKey => {uid};
}

/// Tabla de movimientos (ingresos/egresos/transferencias)
class Transactions extends Table {
  TextColumn get uid => text().named('uid')();
  TextColumn get userId => text().named('user_id')();
  TextColumn get walletId => text().named('wallet_id')();
  TextColumn get type => text()(); // TransactionType
  TextColumn get currency => text()();
  TextColumn get category => text()(); // TransactionCategory
  RealColumn get amount => real()();
  TextColumn get note => text().nullable()();
  TextColumn get subcategory => text().nullable()();
  DateTimeColumn get date => dateTime()();
  BoolColumn get isSharedExpense => boolean().withDefault(const Constant(false))();
  TextColumn get sharedExpenseId => text().nullable()();
  TextColumn get targetWalletId => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get firestoreId => text().nullable()();

  @override
  Set<Column> get primaryKey => {uid};
}

/// Tabla de metas personales y grupales
class Goals extends Table {
  TextColumn get uid => text()();
  TextColumn get userId => text().named('user_id')();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  RealColumn get targetAmount => real().named('target_amount')();
  RealColumn get currentAmount => real().named('current_amount').withDefault(const Constant(0.0))();
  TextColumn get currency => text()();
  DateTimeColumn get deadline => dateTime().nullable()();
  TextColumn get icon => text().withDefault(const Constant('🎯'))();
  IntColumn get colorValue => integer()();
  BoolColumn get isShared => boolean().withDefault(const Constant(false))();
  TextColumn get familyGroupId => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('active'))(); // GoalStatus
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get firestoreId => text().nullable()();

  @override
  Set<Column> get primaryKey => {uid};
}

/// Tabla de contribuciones a metas
class GoalContributions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get goalId => text().named('goal_id')();
  TextColumn get userId => text().named('user_id')();
  RealColumn get amount => real()();
  DateTimeColumn get date => dateTime()();
  TextColumn get note => text().nullable()();
}

/// Tabla de presupuestos mensuales
class Budgets extends Table {
  TextColumn get uid => text()();
  TextColumn get userId => text().named('user_id')();
  TextColumn get category => text()(); // TransactionCategory
  RealColumn get limitAmount => real().named('limit_amount')();
  TextColumn get currency => text()();
  IntColumn get month => integer()();
  IntColumn get year => integer()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {uid};
}

/// Tabla de gastos compartidos
class SharedExpenses extends Table {
  TextColumn get uid => text()();
  TextColumn get familyGroupId => text().named('family_group_id')();
  TextColumn get payerUserId => text().named('payer_user_id')();
  TextColumn get title => text()();
  RealColumn get totalAmount => real().named('total_amount')();
  TextColumn get currency => text()();
  TextColumn get category => text()();
  TextColumn get splitMode => text().named('split_mode')(); // SplitMode
  DateTimeColumn get date => dateTime()();
  TextColumn get note => text().nullable()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get firestoreId => text().nullable()();

  @override
  Set<Column> get primaryKey => {uid};
}

/// Tabla de splits individuales dentro de un gasto compartido
class SplitItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get sharedExpenseId => text().named('shared_expense_id')();
  TextColumn get userId => text().named('user_id')();
  TextColumn get displayName => text().named('display_name')();
  RealColumn get amount => real()();
  RealColumn get percentage => real().withDefault(const Constant(0.0))();
  BoolColumn get isPaid => boolean().withDefault(const Constant(false))();
  DateTimeColumn get paidAt => dateTime().nullable()();
}

/// Tabla del grupo familiar
class FamilyGroups extends Table {
  TextColumn get uid => text()();
  TextColumn get name => text()();
  TextColumn get createdByUserId => text().named('created_by_user_id')();
  TextColumn get memberIdsJson => text().named('member_ids_json')(); // JSON array de IDs
  TextColumn get memberNamesJson => text().named('member_names_json')(); // JSON array de nombres
  TextColumn get inviteCode => text().named('invite_code')();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get firestoreId => text().nullable()();

  @override
  Set<Column> get primaryKey => {uid};
}

/// Tabla para el tipo de cambio ARS/USD
class ExchangeRates extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get official => real()();
  RealColumn get blue => real()();
  RealColumn get mep => real()();
  TextColumn get selectedType => text().withDefault(const Constant('blue'))();
  RealColumn get manualRate => real().nullable()();
  BoolColumn get isManual => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastUpdated => dateTime()();
}
