// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $WalletsTable extends Wallets with TableInfo<$WalletsTable, Wallet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _balanceMeta = const VerificationMeta(
    'balance',
  );
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
    'balance',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('💰'),
  );
  static const VerificationMeta _colorValueMeta = const VerificationMeta(
    'colorValue',
  );
  @override
  late final GeneratedColumn<int> colorValue = GeneratedColumn<int>(
    'color_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bankNameMeta = const VerificationMeta(
    'bankName',
  );
  @override
  late final GeneratedColumn<String> bankName = GeneratedColumn<String>(
    'bank_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isVisibleMeta = const VerificationMeta(
    'isVisible',
  );
  @override
  late final GeneratedColumn<bool> isVisible = GeneratedColumn<bool>(
    'is_visible',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_visible" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _isArchivedMeta = const VerificationMeta(
    'isArchived',
  );
  @override
  late final GeneratedColumn<bool> isArchived = GeneratedColumn<bool>(
    'is_archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_archived" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _firestoreIdMeta = const VerificationMeta(
    'firestoreId',
  );
  @override
  late final GeneratedColumn<String> firestoreId = GeneratedColumn<String>(
    'firestore_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    uid,
    userId,
    name,
    type,
    currency,
    balance,
    icon,
    colorValue,
    bankName,
    isVisible,
    isArchived,
    createdAt,
    updatedAt,
    firestoreId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wallets';
  @override
  VerificationContext validateIntegrity(
    Insertable<Wallet> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(
        _balanceMeta,
        balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('color_value')) {
      context.handle(
        _colorValueMeta,
        colorValue.isAcceptableOrUnknown(data['color_value']!, _colorValueMeta),
      );
    } else if (isInserting) {
      context.missing(_colorValueMeta);
    }
    if (data.containsKey('bank_name')) {
      context.handle(
        _bankNameMeta,
        bankName.isAcceptableOrUnknown(data['bank_name']!, _bankNameMeta),
      );
    }
    if (data.containsKey('is_visible')) {
      context.handle(
        _isVisibleMeta,
        isVisible.isAcceptableOrUnknown(data['is_visible']!, _isVisibleMeta),
      );
    }
    if (data.containsKey('is_archived')) {
      context.handle(
        _isArchivedMeta,
        isArchived.isAcceptableOrUnknown(data['is_archived']!, _isArchivedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('firestore_id')) {
      context.handle(
        _firestoreIdMeta,
        firestoreId.isAcceptableOrUnknown(
          data['firestore_id']!,
          _firestoreIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  Wallet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Wallet(
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      balance: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}balance'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      )!,
      colorValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color_value'],
      )!,
      bankName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bank_name'],
      ),
      isVisible: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_visible'],
      )!,
      isArchived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_archived'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      firestoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firestore_id'],
      ),
    );
  }

  @override
  $WalletsTable createAlias(String alias) {
    return $WalletsTable(attachedDatabase, alias);
  }
}

class Wallet extends DataClass implements Insertable<Wallet> {
  final String uid;
  final String userId;
  final String name;
  final String type;
  final String currency;
  final double balance;
  final String icon;
  final int colorValue;
  final String? bankName;
  final bool isVisible;
  final bool isArchived;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? firestoreId;
  const Wallet({
    required this.uid,
    required this.userId,
    required this.name,
    required this.type,
    required this.currency,
    required this.balance,
    required this.icon,
    required this.colorValue,
    this.bankName,
    required this.isVisible,
    required this.isArchived,
    required this.createdAt,
    this.updatedAt,
    this.firestoreId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['currency'] = Variable<String>(currency);
    map['balance'] = Variable<double>(balance);
    map['icon'] = Variable<String>(icon);
    map['color_value'] = Variable<int>(colorValue);
    if (!nullToAbsent || bankName != null) {
      map['bank_name'] = Variable<String>(bankName);
    }
    map['is_visible'] = Variable<bool>(isVisible);
    map['is_archived'] = Variable<bool>(isArchived);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || firestoreId != null) {
      map['firestore_id'] = Variable<String>(firestoreId);
    }
    return map;
  }

  WalletsCompanion toCompanion(bool nullToAbsent) {
    return WalletsCompanion(
      uid: Value(uid),
      userId: Value(userId),
      name: Value(name),
      type: Value(type),
      currency: Value(currency),
      balance: Value(balance),
      icon: Value(icon),
      colorValue: Value(colorValue),
      bankName: bankName == null && nullToAbsent
          ? const Value.absent()
          : Value(bankName),
      isVisible: Value(isVisible),
      isArchived: Value(isArchived),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      firestoreId: firestoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(firestoreId),
    );
  }

  factory Wallet.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Wallet(
      uid: serializer.fromJson<String>(json['uid']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      currency: serializer.fromJson<String>(json['currency']),
      balance: serializer.fromJson<double>(json['balance']),
      icon: serializer.fromJson<String>(json['icon']),
      colorValue: serializer.fromJson<int>(json['colorValue']),
      bankName: serializer.fromJson<String?>(json['bankName']),
      isVisible: serializer.fromJson<bool>(json['isVisible']),
      isArchived: serializer.fromJson<bool>(json['isArchived']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      firestoreId: serializer.fromJson<String?>(json['firestoreId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'currency': serializer.toJson<String>(currency),
      'balance': serializer.toJson<double>(balance),
      'icon': serializer.toJson<String>(icon),
      'colorValue': serializer.toJson<int>(colorValue),
      'bankName': serializer.toJson<String?>(bankName),
      'isVisible': serializer.toJson<bool>(isVisible),
      'isArchived': serializer.toJson<bool>(isArchived),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'firestoreId': serializer.toJson<String?>(firestoreId),
    };
  }

  Wallet copyWith({
    String? uid,
    String? userId,
    String? name,
    String? type,
    String? currency,
    double? balance,
    String? icon,
    int? colorValue,
    Value<String?> bankName = const Value.absent(),
    bool? isVisible,
    bool? isArchived,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<String?> firestoreId = const Value.absent(),
  }) => Wallet(
    uid: uid ?? this.uid,
    userId: userId ?? this.userId,
    name: name ?? this.name,
    type: type ?? this.type,
    currency: currency ?? this.currency,
    balance: balance ?? this.balance,
    icon: icon ?? this.icon,
    colorValue: colorValue ?? this.colorValue,
    bankName: bankName.present ? bankName.value : this.bankName,
    isVisible: isVisible ?? this.isVisible,
    isArchived: isArchived ?? this.isArchived,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    firestoreId: firestoreId.present ? firestoreId.value : this.firestoreId,
  );
  Wallet copyWithCompanion(WalletsCompanion data) {
    return Wallet(
      uid: data.uid.present ? data.uid.value : this.uid,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      currency: data.currency.present ? data.currency.value : this.currency,
      balance: data.balance.present ? data.balance.value : this.balance,
      icon: data.icon.present ? data.icon.value : this.icon,
      colorValue: data.colorValue.present
          ? data.colorValue.value
          : this.colorValue,
      bankName: data.bankName.present ? data.bankName.value : this.bankName,
      isVisible: data.isVisible.present ? data.isVisible.value : this.isVisible,
      isArchived: data.isArchived.present
          ? data.isArchived.value
          : this.isArchived,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      firestoreId: data.firestoreId.present
          ? data.firestoreId.value
          : this.firestoreId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Wallet(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('balance: $balance, ')
          ..write('icon: $icon, ')
          ..write('colorValue: $colorValue, ')
          ..write('bankName: $bankName, ')
          ..write('isVisible: $isVisible, ')
          ..write('isArchived: $isArchived, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('firestoreId: $firestoreId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    uid,
    userId,
    name,
    type,
    currency,
    balance,
    icon,
    colorValue,
    bankName,
    isVisible,
    isArchived,
    createdAt,
    updatedAt,
    firestoreId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Wallet &&
          other.uid == this.uid &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.type == this.type &&
          other.currency == this.currency &&
          other.balance == this.balance &&
          other.icon == this.icon &&
          other.colorValue == this.colorValue &&
          other.bankName == this.bankName &&
          other.isVisible == this.isVisible &&
          other.isArchived == this.isArchived &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.firestoreId == this.firestoreId);
}

class WalletsCompanion extends UpdateCompanion<Wallet> {
  final Value<String> uid;
  final Value<String> userId;
  final Value<String> name;
  final Value<String> type;
  final Value<String> currency;
  final Value<double> balance;
  final Value<String> icon;
  final Value<int> colorValue;
  final Value<String?> bankName;
  final Value<bool> isVisible;
  final Value<bool> isArchived;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String?> firestoreId;
  final Value<int> rowid;
  const WalletsCompanion({
    this.uid = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.currency = const Value.absent(),
    this.balance = const Value.absent(),
    this.icon = const Value.absent(),
    this.colorValue = const Value.absent(),
    this.bankName = const Value.absent(),
    this.isVisible = const Value.absent(),
    this.isArchived = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WalletsCompanion.insert({
    required String uid,
    required String userId,
    required String name,
    required String type,
    required String currency,
    this.balance = const Value.absent(),
    this.icon = const Value.absent(),
    required int colorValue,
    this.bankName = const Value.absent(),
    this.isVisible = const Value.absent(),
    this.isArchived = const Value.absent(),
    required DateTime createdAt,
    this.updatedAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uid = Value(uid),
       userId = Value(userId),
       name = Value(name),
       type = Value(type),
       currency = Value(currency),
       colorValue = Value(colorValue),
       createdAt = Value(createdAt);
  static Insertable<Wallet> custom({
    Expression<String>? uid,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? currency,
    Expression<double>? balance,
    Expression<String>? icon,
    Expression<int>? colorValue,
    Expression<String>? bankName,
    Expression<bool>? isVisible,
    Expression<bool>? isArchived,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? firestoreId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (currency != null) 'currency': currency,
      if (balance != null) 'balance': balance,
      if (icon != null) 'icon': icon,
      if (colorValue != null) 'color_value': colorValue,
      if (bankName != null) 'bank_name': bankName,
      if (isVisible != null) 'is_visible': isVisible,
      if (isArchived != null) 'is_archived': isArchived,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (firestoreId != null) 'firestore_id': firestoreId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WalletsCompanion copyWith({
    Value<String>? uid,
    Value<String>? userId,
    Value<String>? name,
    Value<String>? type,
    Value<String>? currency,
    Value<double>? balance,
    Value<String>? icon,
    Value<int>? colorValue,
    Value<String?>? bankName,
    Value<bool>? isVisible,
    Value<bool>? isArchived,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<String?>? firestoreId,
    Value<int>? rowid,
  }) {
    return WalletsCompanion(
      uid: uid ?? this.uid,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      type: type ?? this.type,
      currency: currency ?? this.currency,
      balance: balance ?? this.balance,
      icon: icon ?? this.icon,
      colorValue: colorValue ?? this.colorValue,
      bankName: bankName ?? this.bankName,
      isVisible: isVisible ?? this.isVisible,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      firestoreId: firestoreId ?? this.firestoreId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (colorValue.present) {
      map['color_value'] = Variable<int>(colorValue.value);
    }
    if (bankName.present) {
      map['bank_name'] = Variable<String>(bankName.value);
    }
    if (isVisible.present) {
      map['is_visible'] = Variable<bool>(isVisible.value);
    }
    if (isArchived.present) {
      map['is_archived'] = Variable<bool>(isArchived.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (firestoreId.present) {
      map['firestore_id'] = Variable<String>(firestoreId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletsCompanion(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('balance: $balance, ')
          ..write('icon: $icon, ')
          ..write('colorValue: $colorValue, ')
          ..write('bankName: $bankName, ')
          ..write('isVisible: $isVisible, ')
          ..write('isArchived: $isArchived, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _walletIdMeta = const VerificationMeta(
    'walletId',
  );
  @override
  late final GeneratedColumn<String> walletId = GeneratedColumn<String>(
    'wallet_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _subcategoryMeta = const VerificationMeta(
    'subcategory',
  );
  @override
  late final GeneratedColumn<String> subcategory = GeneratedColumn<String>(
    'subcategory',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSharedExpenseMeta = const VerificationMeta(
    'isSharedExpense',
  );
  @override
  late final GeneratedColumn<bool> isSharedExpense = GeneratedColumn<bool>(
    'is_shared_expense',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_shared_expense" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _sharedExpenseIdMeta = const VerificationMeta(
    'sharedExpenseId',
  );
  @override
  late final GeneratedColumn<String> sharedExpenseId = GeneratedColumn<String>(
    'shared_expense_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetWalletIdMeta = const VerificationMeta(
    'targetWalletId',
  );
  @override
  late final GeneratedColumn<String> targetWalletId = GeneratedColumn<String>(
    'target_wallet_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _firestoreIdMeta = const VerificationMeta(
    'firestoreId',
  );
  @override
  late final GeneratedColumn<String> firestoreId = GeneratedColumn<String>(
    'firestore_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    uid,
    userId,
    walletId,
    type,
    currency,
    category,
    amount,
    note,
    subcategory,
    date,
    isSharedExpense,
    sharedExpenseId,
    targetWalletId,
    createdAt,
    updatedAt,
    firestoreId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transactions';
  @override
  VerificationContext validateIntegrity(
    Insertable<Transaction> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('wallet_id')) {
      context.handle(
        _walletIdMeta,
        walletId.isAcceptableOrUnknown(data['wallet_id']!, _walletIdMeta),
      );
    } else if (isInserting) {
      context.missing(_walletIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('subcategory')) {
      context.handle(
        _subcategoryMeta,
        subcategory.isAcceptableOrUnknown(
          data['subcategory']!,
          _subcategoryMeta,
        ),
      );
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('is_shared_expense')) {
      context.handle(
        _isSharedExpenseMeta,
        isSharedExpense.isAcceptableOrUnknown(
          data['is_shared_expense']!,
          _isSharedExpenseMeta,
        ),
      );
    }
    if (data.containsKey('shared_expense_id')) {
      context.handle(
        _sharedExpenseIdMeta,
        sharedExpenseId.isAcceptableOrUnknown(
          data['shared_expense_id']!,
          _sharedExpenseIdMeta,
        ),
      );
    }
    if (data.containsKey('target_wallet_id')) {
      context.handle(
        _targetWalletIdMeta,
        targetWalletId.isAcceptableOrUnknown(
          data['target_wallet_id']!,
          _targetWalletIdMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('firestore_id')) {
      context.handle(
        _firestoreIdMeta,
        firestoreId.isAcceptableOrUnknown(
          data['firestore_id']!,
          _firestoreIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transaction(
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      walletId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}wallet_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      subcategory: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subcategory'],
      ),
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      isSharedExpense: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_shared_expense'],
      )!,
      sharedExpenseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shared_expense_id'],
      ),
      targetWalletId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}target_wallet_id'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      firestoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firestore_id'],
      ),
    );
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(attachedDatabase, alias);
  }
}

class Transaction extends DataClass implements Insertable<Transaction> {
  final String uid;
  final String userId;
  final String walletId;
  final String type;
  final String currency;
  final String category;
  final double amount;
  final String? note;
  final String? subcategory;
  final DateTime date;
  final bool isSharedExpense;
  final String? sharedExpenseId;
  final String? targetWalletId;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? firestoreId;
  const Transaction({
    required this.uid,
    required this.userId,
    required this.walletId,
    required this.type,
    required this.currency,
    required this.category,
    required this.amount,
    this.note,
    this.subcategory,
    required this.date,
    required this.isSharedExpense,
    this.sharedExpenseId,
    this.targetWalletId,
    required this.createdAt,
    this.updatedAt,
    this.firestoreId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['user_id'] = Variable<String>(userId);
    map['wallet_id'] = Variable<String>(walletId);
    map['type'] = Variable<String>(type);
    map['currency'] = Variable<String>(currency);
    map['category'] = Variable<String>(category);
    map['amount'] = Variable<double>(amount);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || subcategory != null) {
      map['subcategory'] = Variable<String>(subcategory);
    }
    map['date'] = Variable<DateTime>(date);
    map['is_shared_expense'] = Variable<bool>(isSharedExpense);
    if (!nullToAbsent || sharedExpenseId != null) {
      map['shared_expense_id'] = Variable<String>(sharedExpenseId);
    }
    if (!nullToAbsent || targetWalletId != null) {
      map['target_wallet_id'] = Variable<String>(targetWalletId);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || firestoreId != null) {
      map['firestore_id'] = Variable<String>(firestoreId);
    }
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      uid: Value(uid),
      userId: Value(userId),
      walletId: Value(walletId),
      type: Value(type),
      currency: Value(currency),
      category: Value(category),
      amount: Value(amount),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      subcategory: subcategory == null && nullToAbsent
          ? const Value.absent()
          : Value(subcategory),
      date: Value(date),
      isSharedExpense: Value(isSharedExpense),
      sharedExpenseId: sharedExpenseId == null && nullToAbsent
          ? const Value.absent()
          : Value(sharedExpenseId),
      targetWalletId: targetWalletId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetWalletId),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      firestoreId: firestoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(firestoreId),
    );
  }

  factory Transaction.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Transaction(
      uid: serializer.fromJson<String>(json['uid']),
      userId: serializer.fromJson<String>(json['userId']),
      walletId: serializer.fromJson<String>(json['walletId']),
      type: serializer.fromJson<String>(json['type']),
      currency: serializer.fromJson<String>(json['currency']),
      category: serializer.fromJson<String>(json['category']),
      amount: serializer.fromJson<double>(json['amount']),
      note: serializer.fromJson<String?>(json['note']),
      subcategory: serializer.fromJson<String?>(json['subcategory']),
      date: serializer.fromJson<DateTime>(json['date']),
      isSharedExpense: serializer.fromJson<bool>(json['isSharedExpense']),
      sharedExpenseId: serializer.fromJson<String?>(json['sharedExpenseId']),
      targetWalletId: serializer.fromJson<String?>(json['targetWalletId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      firestoreId: serializer.fromJson<String?>(json['firestoreId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'userId': serializer.toJson<String>(userId),
      'walletId': serializer.toJson<String>(walletId),
      'type': serializer.toJson<String>(type),
      'currency': serializer.toJson<String>(currency),
      'category': serializer.toJson<String>(category),
      'amount': serializer.toJson<double>(amount),
      'note': serializer.toJson<String?>(note),
      'subcategory': serializer.toJson<String?>(subcategory),
      'date': serializer.toJson<DateTime>(date),
      'isSharedExpense': serializer.toJson<bool>(isSharedExpense),
      'sharedExpenseId': serializer.toJson<String?>(sharedExpenseId),
      'targetWalletId': serializer.toJson<String?>(targetWalletId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'firestoreId': serializer.toJson<String?>(firestoreId),
    };
  }

  Transaction copyWith({
    String? uid,
    String? userId,
    String? walletId,
    String? type,
    String? currency,
    String? category,
    double? amount,
    Value<String?> note = const Value.absent(),
    Value<String?> subcategory = const Value.absent(),
    DateTime? date,
    bool? isSharedExpense,
    Value<String?> sharedExpenseId = const Value.absent(),
    Value<String?> targetWalletId = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<String?> firestoreId = const Value.absent(),
  }) => Transaction(
    uid: uid ?? this.uid,
    userId: userId ?? this.userId,
    walletId: walletId ?? this.walletId,
    type: type ?? this.type,
    currency: currency ?? this.currency,
    category: category ?? this.category,
    amount: amount ?? this.amount,
    note: note.present ? note.value : this.note,
    subcategory: subcategory.present ? subcategory.value : this.subcategory,
    date: date ?? this.date,
    isSharedExpense: isSharedExpense ?? this.isSharedExpense,
    sharedExpenseId: sharedExpenseId.present
        ? sharedExpenseId.value
        : this.sharedExpenseId,
    targetWalletId: targetWalletId.present
        ? targetWalletId.value
        : this.targetWalletId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    firestoreId: firestoreId.present ? firestoreId.value : this.firestoreId,
  );
  Transaction copyWithCompanion(TransactionsCompanion data) {
    return Transaction(
      uid: data.uid.present ? data.uid.value : this.uid,
      userId: data.userId.present ? data.userId.value : this.userId,
      walletId: data.walletId.present ? data.walletId.value : this.walletId,
      type: data.type.present ? data.type.value : this.type,
      currency: data.currency.present ? data.currency.value : this.currency,
      category: data.category.present ? data.category.value : this.category,
      amount: data.amount.present ? data.amount.value : this.amount,
      note: data.note.present ? data.note.value : this.note,
      subcategory: data.subcategory.present
          ? data.subcategory.value
          : this.subcategory,
      date: data.date.present ? data.date.value : this.date,
      isSharedExpense: data.isSharedExpense.present
          ? data.isSharedExpense.value
          : this.isSharedExpense,
      sharedExpenseId: data.sharedExpenseId.present
          ? data.sharedExpenseId.value
          : this.sharedExpenseId,
      targetWalletId: data.targetWalletId.present
          ? data.targetWalletId.value
          : this.targetWalletId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      firestoreId: data.firestoreId.present
          ? data.firestoreId.value
          : this.firestoreId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('walletId: $walletId, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('category: $category, ')
          ..write('amount: $amount, ')
          ..write('note: $note, ')
          ..write('subcategory: $subcategory, ')
          ..write('date: $date, ')
          ..write('isSharedExpense: $isSharedExpense, ')
          ..write('sharedExpenseId: $sharedExpenseId, ')
          ..write('targetWalletId: $targetWalletId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('firestoreId: $firestoreId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    uid,
    userId,
    walletId,
    type,
    currency,
    category,
    amount,
    note,
    subcategory,
    date,
    isSharedExpense,
    sharedExpenseId,
    targetWalletId,
    createdAt,
    updatedAt,
    firestoreId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.uid == this.uid &&
          other.userId == this.userId &&
          other.walletId == this.walletId &&
          other.type == this.type &&
          other.currency == this.currency &&
          other.category == this.category &&
          other.amount == this.amount &&
          other.note == this.note &&
          other.subcategory == this.subcategory &&
          other.date == this.date &&
          other.isSharedExpense == this.isSharedExpense &&
          other.sharedExpenseId == this.sharedExpenseId &&
          other.targetWalletId == this.targetWalletId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.firestoreId == this.firestoreId);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<String> uid;
  final Value<String> userId;
  final Value<String> walletId;
  final Value<String> type;
  final Value<String> currency;
  final Value<String> category;
  final Value<double> amount;
  final Value<String?> note;
  final Value<String?> subcategory;
  final Value<DateTime> date;
  final Value<bool> isSharedExpense;
  final Value<String?> sharedExpenseId;
  final Value<String?> targetWalletId;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String?> firestoreId;
  final Value<int> rowid;
  const TransactionsCompanion({
    this.uid = const Value.absent(),
    this.userId = const Value.absent(),
    this.walletId = const Value.absent(),
    this.type = const Value.absent(),
    this.currency = const Value.absent(),
    this.category = const Value.absent(),
    this.amount = const Value.absent(),
    this.note = const Value.absent(),
    this.subcategory = const Value.absent(),
    this.date = const Value.absent(),
    this.isSharedExpense = const Value.absent(),
    this.sharedExpenseId = const Value.absent(),
    this.targetWalletId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TransactionsCompanion.insert({
    required String uid,
    required String userId,
    required String walletId,
    required String type,
    required String currency,
    required String category,
    required double amount,
    this.note = const Value.absent(),
    this.subcategory = const Value.absent(),
    required DateTime date,
    this.isSharedExpense = const Value.absent(),
    this.sharedExpenseId = const Value.absent(),
    this.targetWalletId = const Value.absent(),
    required DateTime createdAt,
    this.updatedAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uid = Value(uid),
       userId = Value(userId),
       walletId = Value(walletId),
       type = Value(type),
       currency = Value(currency),
       category = Value(category),
       amount = Value(amount),
       date = Value(date),
       createdAt = Value(createdAt);
  static Insertable<Transaction> custom({
    Expression<String>? uid,
    Expression<String>? userId,
    Expression<String>? walletId,
    Expression<String>? type,
    Expression<String>? currency,
    Expression<String>? category,
    Expression<double>? amount,
    Expression<String>? note,
    Expression<String>? subcategory,
    Expression<DateTime>? date,
    Expression<bool>? isSharedExpense,
    Expression<String>? sharedExpenseId,
    Expression<String>? targetWalletId,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? firestoreId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (userId != null) 'user_id': userId,
      if (walletId != null) 'wallet_id': walletId,
      if (type != null) 'type': type,
      if (currency != null) 'currency': currency,
      if (category != null) 'category': category,
      if (amount != null) 'amount': amount,
      if (note != null) 'note': note,
      if (subcategory != null) 'subcategory': subcategory,
      if (date != null) 'date': date,
      if (isSharedExpense != null) 'is_shared_expense': isSharedExpense,
      if (sharedExpenseId != null) 'shared_expense_id': sharedExpenseId,
      if (targetWalletId != null) 'target_wallet_id': targetWalletId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (firestoreId != null) 'firestore_id': firestoreId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionsCompanion copyWith({
    Value<String>? uid,
    Value<String>? userId,
    Value<String>? walletId,
    Value<String>? type,
    Value<String>? currency,
    Value<String>? category,
    Value<double>? amount,
    Value<String?>? note,
    Value<String?>? subcategory,
    Value<DateTime>? date,
    Value<bool>? isSharedExpense,
    Value<String?>? sharedExpenseId,
    Value<String?>? targetWalletId,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<String?>? firestoreId,
    Value<int>? rowid,
  }) {
    return TransactionsCompanion(
      uid: uid ?? this.uid,
      userId: userId ?? this.userId,
      walletId: walletId ?? this.walletId,
      type: type ?? this.type,
      currency: currency ?? this.currency,
      category: category ?? this.category,
      amount: amount ?? this.amount,
      note: note ?? this.note,
      subcategory: subcategory ?? this.subcategory,
      date: date ?? this.date,
      isSharedExpense: isSharedExpense ?? this.isSharedExpense,
      sharedExpenseId: sharedExpenseId ?? this.sharedExpenseId,
      targetWalletId: targetWalletId ?? this.targetWalletId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      firestoreId: firestoreId ?? this.firestoreId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (walletId.present) {
      map['wallet_id'] = Variable<String>(walletId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (subcategory.present) {
      map['subcategory'] = Variable<String>(subcategory.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (isSharedExpense.present) {
      map['is_shared_expense'] = Variable<bool>(isSharedExpense.value);
    }
    if (sharedExpenseId.present) {
      map['shared_expense_id'] = Variable<String>(sharedExpenseId.value);
    }
    if (targetWalletId.present) {
      map['target_wallet_id'] = Variable<String>(targetWalletId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (firestoreId.present) {
      map['firestore_id'] = Variable<String>(firestoreId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('walletId: $walletId, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('category: $category, ')
          ..write('amount: $amount, ')
          ..write('note: $note, ')
          ..write('subcategory: $subcategory, ')
          ..write('date: $date, ')
          ..write('isSharedExpense: $isSharedExpense, ')
          ..write('sharedExpenseId: $sharedExpenseId, ')
          ..write('targetWalletId: $targetWalletId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GoalsTable extends Goals with TableInfo<$GoalsTable, Goal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetAmountMeta = const VerificationMeta(
    'targetAmount',
  );
  @override
  late final GeneratedColumn<double> targetAmount = GeneratedColumn<double>(
    'target_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentAmountMeta = const VerificationMeta(
    'currentAmount',
  );
  @override
  late final GeneratedColumn<double> currentAmount = GeneratedColumn<double>(
    'current_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deadlineMeta = const VerificationMeta(
    'deadline',
  );
  @override
  late final GeneratedColumn<DateTime> deadline = GeneratedColumn<DateTime>(
    'deadline',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('🎯'),
  );
  static const VerificationMeta _colorValueMeta = const VerificationMeta(
    'colorValue',
  );
  @override
  late final GeneratedColumn<int> colorValue = GeneratedColumn<int>(
    'color_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSharedMeta = const VerificationMeta(
    'isShared',
  );
  @override
  late final GeneratedColumn<bool> isShared = GeneratedColumn<bool>(
    'is_shared',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_shared" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _familyGroupIdMeta = const VerificationMeta(
    'familyGroupId',
  );
  @override
  late final GeneratedColumn<String> familyGroupId = GeneratedColumn<String>(
    'family_group_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _firestoreIdMeta = const VerificationMeta(
    'firestoreId',
  );
  @override
  late final GeneratedColumn<String> firestoreId = GeneratedColumn<String>(
    'firestore_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    uid,
    userId,
    title,
    description,
    targetAmount,
    currentAmount,
    currency,
    deadline,
    icon,
    colorValue,
    isShared,
    familyGroupId,
    status,
    createdAt,
    updatedAt,
    firestoreId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goals';
  @override
  VerificationContext validateIntegrity(
    Insertable<Goal> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('target_amount')) {
      context.handle(
        _targetAmountMeta,
        targetAmount.isAcceptableOrUnknown(
          data['target_amount']!,
          _targetAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetAmountMeta);
    }
    if (data.containsKey('current_amount')) {
      context.handle(
        _currentAmountMeta,
        currentAmount.isAcceptableOrUnknown(
          data['current_amount']!,
          _currentAmountMeta,
        ),
      );
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('deadline')) {
      context.handle(
        _deadlineMeta,
        deadline.isAcceptableOrUnknown(data['deadline']!, _deadlineMeta),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('color_value')) {
      context.handle(
        _colorValueMeta,
        colorValue.isAcceptableOrUnknown(data['color_value']!, _colorValueMeta),
      );
    } else if (isInserting) {
      context.missing(_colorValueMeta);
    }
    if (data.containsKey('is_shared')) {
      context.handle(
        _isSharedMeta,
        isShared.isAcceptableOrUnknown(data['is_shared']!, _isSharedMeta),
      );
    }
    if (data.containsKey('family_group_id')) {
      context.handle(
        _familyGroupIdMeta,
        familyGroupId.isAcceptableOrUnknown(
          data['family_group_id']!,
          _familyGroupIdMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('firestore_id')) {
      context.handle(
        _firestoreIdMeta,
        firestoreId.isAcceptableOrUnknown(
          data['firestore_id']!,
          _firestoreIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  Goal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Goal(
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      targetAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_amount'],
      )!,
      currentAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}current_amount'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      deadline: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}deadline'],
      ),
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      )!,
      colorValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color_value'],
      )!,
      isShared: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_shared'],
      )!,
      familyGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}family_group_id'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      firestoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firestore_id'],
      ),
    );
  }

  @override
  $GoalsTable createAlias(String alias) {
    return $GoalsTable(attachedDatabase, alias);
  }
}

class Goal extends DataClass implements Insertable<Goal> {
  final String uid;
  final String userId;
  final String title;
  final String? description;
  final double targetAmount;
  final double currentAmount;
  final String currency;
  final DateTime? deadline;
  final String icon;
  final int colorValue;
  final bool isShared;
  final String? familyGroupId;
  final String status;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String? firestoreId;
  const Goal({
    required this.uid,
    required this.userId,
    required this.title,
    this.description,
    required this.targetAmount,
    required this.currentAmount,
    required this.currency,
    this.deadline,
    required this.icon,
    required this.colorValue,
    required this.isShared,
    this.familyGroupId,
    required this.status,
    required this.createdAt,
    this.updatedAt,
    this.firestoreId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['user_id'] = Variable<String>(userId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['target_amount'] = Variable<double>(targetAmount);
    map['current_amount'] = Variable<double>(currentAmount);
    map['currency'] = Variable<String>(currency);
    if (!nullToAbsent || deadline != null) {
      map['deadline'] = Variable<DateTime>(deadline);
    }
    map['icon'] = Variable<String>(icon);
    map['color_value'] = Variable<int>(colorValue);
    map['is_shared'] = Variable<bool>(isShared);
    if (!nullToAbsent || familyGroupId != null) {
      map['family_group_id'] = Variable<String>(familyGroupId);
    }
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || firestoreId != null) {
      map['firestore_id'] = Variable<String>(firestoreId);
    }
    return map;
  }

  GoalsCompanion toCompanion(bool nullToAbsent) {
    return GoalsCompanion(
      uid: Value(uid),
      userId: Value(userId),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      targetAmount: Value(targetAmount),
      currentAmount: Value(currentAmount),
      currency: Value(currency),
      deadline: deadline == null && nullToAbsent
          ? const Value.absent()
          : Value(deadline),
      icon: Value(icon),
      colorValue: Value(colorValue),
      isShared: Value(isShared),
      familyGroupId: familyGroupId == null && nullToAbsent
          ? const Value.absent()
          : Value(familyGroupId),
      status: Value(status),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      firestoreId: firestoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(firestoreId),
    );
  }

  factory Goal.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Goal(
      uid: serializer.fromJson<String>(json['uid']),
      userId: serializer.fromJson<String>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      targetAmount: serializer.fromJson<double>(json['targetAmount']),
      currentAmount: serializer.fromJson<double>(json['currentAmount']),
      currency: serializer.fromJson<String>(json['currency']),
      deadline: serializer.fromJson<DateTime?>(json['deadline']),
      icon: serializer.fromJson<String>(json['icon']),
      colorValue: serializer.fromJson<int>(json['colorValue']),
      isShared: serializer.fromJson<bool>(json['isShared']),
      familyGroupId: serializer.fromJson<String?>(json['familyGroupId']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      firestoreId: serializer.fromJson<String?>(json['firestoreId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'userId': serializer.toJson<String>(userId),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'targetAmount': serializer.toJson<double>(targetAmount),
      'currentAmount': serializer.toJson<double>(currentAmount),
      'currency': serializer.toJson<String>(currency),
      'deadline': serializer.toJson<DateTime?>(deadline),
      'icon': serializer.toJson<String>(icon),
      'colorValue': serializer.toJson<int>(colorValue),
      'isShared': serializer.toJson<bool>(isShared),
      'familyGroupId': serializer.toJson<String?>(familyGroupId),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'firestoreId': serializer.toJson<String?>(firestoreId),
    };
  }

  Goal copyWith({
    String? uid,
    String? userId,
    String? title,
    Value<String?> description = const Value.absent(),
    double? targetAmount,
    double? currentAmount,
    String? currency,
    Value<DateTime?> deadline = const Value.absent(),
    String? icon,
    int? colorValue,
    bool? isShared,
    Value<String?> familyGroupId = const Value.absent(),
    String? status,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
    Value<String?> firestoreId = const Value.absent(),
  }) => Goal(
    uid: uid ?? this.uid,
    userId: userId ?? this.userId,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    targetAmount: targetAmount ?? this.targetAmount,
    currentAmount: currentAmount ?? this.currentAmount,
    currency: currency ?? this.currency,
    deadline: deadline.present ? deadline.value : this.deadline,
    icon: icon ?? this.icon,
    colorValue: colorValue ?? this.colorValue,
    isShared: isShared ?? this.isShared,
    familyGroupId: familyGroupId.present
        ? familyGroupId.value
        : this.familyGroupId,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    firestoreId: firestoreId.present ? firestoreId.value : this.firestoreId,
  );
  Goal copyWithCompanion(GoalsCompanion data) {
    return Goal(
      uid: data.uid.present ? data.uid.value : this.uid,
      userId: data.userId.present ? data.userId.value : this.userId,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      targetAmount: data.targetAmount.present
          ? data.targetAmount.value
          : this.targetAmount,
      currentAmount: data.currentAmount.present
          ? data.currentAmount.value
          : this.currentAmount,
      currency: data.currency.present ? data.currency.value : this.currency,
      deadline: data.deadline.present ? data.deadline.value : this.deadline,
      icon: data.icon.present ? data.icon.value : this.icon,
      colorValue: data.colorValue.present
          ? data.colorValue.value
          : this.colorValue,
      isShared: data.isShared.present ? data.isShared.value : this.isShared,
      familyGroupId: data.familyGroupId.present
          ? data.familyGroupId.value
          : this.familyGroupId,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      firestoreId: data.firestoreId.present
          ? data.firestoreId.value
          : this.firestoreId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Goal(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('targetAmount: $targetAmount, ')
          ..write('currentAmount: $currentAmount, ')
          ..write('currency: $currency, ')
          ..write('deadline: $deadline, ')
          ..write('icon: $icon, ')
          ..write('colorValue: $colorValue, ')
          ..write('isShared: $isShared, ')
          ..write('familyGroupId: $familyGroupId, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('firestoreId: $firestoreId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    uid,
    userId,
    title,
    description,
    targetAmount,
    currentAmount,
    currency,
    deadline,
    icon,
    colorValue,
    isShared,
    familyGroupId,
    status,
    createdAt,
    updatedAt,
    firestoreId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Goal &&
          other.uid == this.uid &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.description == this.description &&
          other.targetAmount == this.targetAmount &&
          other.currentAmount == this.currentAmount &&
          other.currency == this.currency &&
          other.deadline == this.deadline &&
          other.icon == this.icon &&
          other.colorValue == this.colorValue &&
          other.isShared == this.isShared &&
          other.familyGroupId == this.familyGroupId &&
          other.status == this.status &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.firestoreId == this.firestoreId);
}

class GoalsCompanion extends UpdateCompanion<Goal> {
  final Value<String> uid;
  final Value<String> userId;
  final Value<String> title;
  final Value<String?> description;
  final Value<double> targetAmount;
  final Value<double> currentAmount;
  final Value<String> currency;
  final Value<DateTime?> deadline;
  final Value<String> icon;
  final Value<int> colorValue;
  final Value<bool> isShared;
  final Value<String?> familyGroupId;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String?> firestoreId;
  final Value<int> rowid;
  const GoalsCompanion({
    this.uid = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.targetAmount = const Value.absent(),
    this.currentAmount = const Value.absent(),
    this.currency = const Value.absent(),
    this.deadline = const Value.absent(),
    this.icon = const Value.absent(),
    this.colorValue = const Value.absent(),
    this.isShared = const Value.absent(),
    this.familyGroupId = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GoalsCompanion.insert({
    required String uid,
    required String userId,
    required String title,
    this.description = const Value.absent(),
    required double targetAmount,
    this.currentAmount = const Value.absent(),
    required String currency,
    this.deadline = const Value.absent(),
    this.icon = const Value.absent(),
    required int colorValue,
    this.isShared = const Value.absent(),
    this.familyGroupId = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime createdAt,
    this.updatedAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uid = Value(uid),
       userId = Value(userId),
       title = Value(title),
       targetAmount = Value(targetAmount),
       currency = Value(currency),
       colorValue = Value(colorValue),
       createdAt = Value(createdAt);
  static Insertable<Goal> custom({
    Expression<String>? uid,
    Expression<String>? userId,
    Expression<String>? title,
    Expression<String>? description,
    Expression<double>? targetAmount,
    Expression<double>? currentAmount,
    Expression<String>? currency,
    Expression<DateTime>? deadline,
    Expression<String>? icon,
    Expression<int>? colorValue,
    Expression<bool>? isShared,
    Expression<String>? familyGroupId,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? firestoreId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (targetAmount != null) 'target_amount': targetAmount,
      if (currentAmount != null) 'current_amount': currentAmount,
      if (currency != null) 'currency': currency,
      if (deadline != null) 'deadline': deadline,
      if (icon != null) 'icon': icon,
      if (colorValue != null) 'color_value': colorValue,
      if (isShared != null) 'is_shared': isShared,
      if (familyGroupId != null) 'family_group_id': familyGroupId,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (firestoreId != null) 'firestore_id': firestoreId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GoalsCompanion copyWith({
    Value<String>? uid,
    Value<String>? userId,
    Value<String>? title,
    Value<String?>? description,
    Value<double>? targetAmount,
    Value<double>? currentAmount,
    Value<String>? currency,
    Value<DateTime?>? deadline,
    Value<String>? icon,
    Value<int>? colorValue,
    Value<bool>? isShared,
    Value<String?>? familyGroupId,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<String?>? firestoreId,
    Value<int>? rowid,
  }) {
    return GoalsCompanion(
      uid: uid ?? this.uid,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      targetAmount: targetAmount ?? this.targetAmount,
      currentAmount: currentAmount ?? this.currentAmount,
      currency: currency ?? this.currency,
      deadline: deadline ?? this.deadline,
      icon: icon ?? this.icon,
      colorValue: colorValue ?? this.colorValue,
      isShared: isShared ?? this.isShared,
      familyGroupId: familyGroupId ?? this.familyGroupId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      firestoreId: firestoreId ?? this.firestoreId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (targetAmount.present) {
      map['target_amount'] = Variable<double>(targetAmount.value);
    }
    if (currentAmount.present) {
      map['current_amount'] = Variable<double>(currentAmount.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (deadline.present) {
      map['deadline'] = Variable<DateTime>(deadline.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (colorValue.present) {
      map['color_value'] = Variable<int>(colorValue.value);
    }
    if (isShared.present) {
      map['is_shared'] = Variable<bool>(isShared.value);
    }
    if (familyGroupId.present) {
      map['family_group_id'] = Variable<String>(familyGroupId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (firestoreId.present) {
      map['firestore_id'] = Variable<String>(firestoreId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalsCompanion(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('targetAmount: $targetAmount, ')
          ..write('currentAmount: $currentAmount, ')
          ..write('currency: $currency, ')
          ..write('deadline: $deadline, ')
          ..write('icon: $icon, ')
          ..write('colorValue: $colorValue, ')
          ..write('isShared: $isShared, ')
          ..write('familyGroupId: $familyGroupId, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GoalContributionsTable extends GoalContributions
    with TableInfo<$GoalContributionsTable, GoalContribution> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalContributionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _goalIdMeta = const VerificationMeta('goalId');
  @override
  late final GeneratedColumn<String> goalId = GeneratedColumn<String>(
    'goal_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    goalId,
    userId,
    amount,
    date,
    note,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goal_contributions';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalContribution> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('goal_id')) {
      context.handle(
        _goalIdMeta,
        goalId.isAcceptableOrUnknown(data['goal_id']!, _goalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_goalIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalContribution map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalContribution(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      goalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}goal_id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
    );
  }

  @override
  $GoalContributionsTable createAlias(String alias) {
    return $GoalContributionsTable(attachedDatabase, alias);
  }
}

class GoalContribution extends DataClass
    implements Insertable<GoalContribution> {
  final int id;
  final String goalId;
  final String userId;
  final double amount;
  final DateTime date;
  final String? note;
  const GoalContribution({
    required this.id,
    required this.goalId,
    required this.userId,
    required this.amount,
    required this.date,
    this.note,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['goal_id'] = Variable<String>(goalId);
    map['user_id'] = Variable<String>(userId);
    map['amount'] = Variable<double>(amount);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  GoalContributionsCompanion toCompanion(bool nullToAbsent) {
    return GoalContributionsCompanion(
      id: Value(id),
      goalId: Value(goalId),
      userId: Value(userId),
      amount: Value(amount),
      date: Value(date),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory GoalContribution.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalContribution(
      id: serializer.fromJson<int>(json['id']),
      goalId: serializer.fromJson<String>(json['goalId']),
      userId: serializer.fromJson<String>(json['userId']),
      amount: serializer.fromJson<double>(json['amount']),
      date: serializer.fromJson<DateTime>(json['date']),
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'goalId': serializer.toJson<String>(goalId),
      'userId': serializer.toJson<String>(userId),
      'amount': serializer.toJson<double>(amount),
      'date': serializer.toJson<DateTime>(date),
      'note': serializer.toJson<String?>(note),
    };
  }

  GoalContribution copyWith({
    int? id,
    String? goalId,
    String? userId,
    double? amount,
    DateTime? date,
    Value<String?> note = const Value.absent(),
  }) => GoalContribution(
    id: id ?? this.id,
    goalId: goalId ?? this.goalId,
    userId: userId ?? this.userId,
    amount: amount ?? this.amount,
    date: date ?? this.date,
    note: note.present ? note.value : this.note,
  );
  GoalContribution copyWithCompanion(GoalContributionsCompanion data) {
    return GoalContribution(
      id: data.id.present ? data.id.value : this.id,
      goalId: data.goalId.present ? data.goalId.value : this.goalId,
      userId: data.userId.present ? data.userId.value : this.userId,
      amount: data.amount.present ? data.amount.value : this.amount,
      date: data.date.present ? data.date.value : this.date,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalContribution(')
          ..write('id: $id, ')
          ..write('goalId: $goalId, ')
          ..write('userId: $userId, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, goalId, userId, amount, date, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalContribution &&
          other.id == this.id &&
          other.goalId == this.goalId &&
          other.userId == this.userId &&
          other.amount == this.amount &&
          other.date == this.date &&
          other.note == this.note);
}

class GoalContributionsCompanion extends UpdateCompanion<GoalContribution> {
  final Value<int> id;
  final Value<String> goalId;
  final Value<String> userId;
  final Value<double> amount;
  final Value<DateTime> date;
  final Value<String?> note;
  const GoalContributionsCompanion({
    this.id = const Value.absent(),
    this.goalId = const Value.absent(),
    this.userId = const Value.absent(),
    this.amount = const Value.absent(),
    this.date = const Value.absent(),
    this.note = const Value.absent(),
  });
  GoalContributionsCompanion.insert({
    this.id = const Value.absent(),
    required String goalId,
    required String userId,
    required double amount,
    required DateTime date,
    this.note = const Value.absent(),
  }) : goalId = Value(goalId),
       userId = Value(userId),
       amount = Value(amount),
       date = Value(date);
  static Insertable<GoalContribution> custom({
    Expression<int>? id,
    Expression<String>? goalId,
    Expression<String>? userId,
    Expression<double>? amount,
    Expression<DateTime>? date,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (goalId != null) 'goal_id': goalId,
      if (userId != null) 'user_id': userId,
      if (amount != null) 'amount': amount,
      if (date != null) 'date': date,
      if (note != null) 'note': note,
    });
  }

  GoalContributionsCompanion copyWith({
    Value<int>? id,
    Value<String>? goalId,
    Value<String>? userId,
    Value<double>? amount,
    Value<DateTime>? date,
    Value<String?>? note,
  }) {
    return GoalContributionsCompanion(
      id: id ?? this.id,
      goalId: goalId ?? this.goalId,
      userId: userId ?? this.userId,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (goalId.present) {
      map['goal_id'] = Variable<String>(goalId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalContributionsCompanion(')
          ..write('id: $id, ')
          ..write('goalId: $goalId, ')
          ..write('userId: $userId, ')
          ..write('amount: $amount, ')
          ..write('date: $date, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $BudgetsTable extends Budgets with TableInfo<$BudgetsTable, Budget> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BudgetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _limitAmountMeta = const VerificationMeta(
    'limitAmount',
  );
  @override
  late final GeneratedColumn<double> limitAmount = GeneratedColumn<double>(
    'limit_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<int> month = GeneratedColumn<int>(
    'month',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    uid,
    userId,
    category,
    limitAmount,
    currency,
    month,
    year,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'budgets';
  @override
  VerificationContext validateIntegrity(
    Insertable<Budget> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('limit_amount')) {
      context.handle(
        _limitAmountMeta,
        limitAmount.isAcceptableOrUnknown(
          data['limit_amount']!,
          _limitAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_limitAmountMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('month')) {
      context.handle(
        _monthMeta,
        month.isAcceptableOrUnknown(data['month']!, _monthMeta),
      );
    } else if (isInserting) {
      context.missing(_monthMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  Budget map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Budget(
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      limitAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}limit_amount'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      month: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}month'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $BudgetsTable createAlias(String alias) {
    return $BudgetsTable(attachedDatabase, alias);
  }
}

class Budget extends DataClass implements Insertable<Budget> {
  final String uid;
  final String userId;
  final String category;
  final double limitAmount;
  final String currency;
  final int month;
  final int year;
  final DateTime createdAt;
  const Budget({
    required this.uid,
    required this.userId,
    required this.category,
    required this.limitAmount,
    required this.currency,
    required this.month,
    required this.year,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['user_id'] = Variable<String>(userId);
    map['category'] = Variable<String>(category);
    map['limit_amount'] = Variable<double>(limitAmount);
    map['currency'] = Variable<String>(currency);
    map['month'] = Variable<int>(month);
    map['year'] = Variable<int>(year);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BudgetsCompanion toCompanion(bool nullToAbsent) {
    return BudgetsCompanion(
      uid: Value(uid),
      userId: Value(userId),
      category: Value(category),
      limitAmount: Value(limitAmount),
      currency: Value(currency),
      month: Value(month),
      year: Value(year),
      createdAt: Value(createdAt),
    );
  }

  factory Budget.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Budget(
      uid: serializer.fromJson<String>(json['uid']),
      userId: serializer.fromJson<String>(json['userId']),
      category: serializer.fromJson<String>(json['category']),
      limitAmount: serializer.fromJson<double>(json['limitAmount']),
      currency: serializer.fromJson<String>(json['currency']),
      month: serializer.fromJson<int>(json['month']),
      year: serializer.fromJson<int>(json['year']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'userId': serializer.toJson<String>(userId),
      'category': serializer.toJson<String>(category),
      'limitAmount': serializer.toJson<double>(limitAmount),
      'currency': serializer.toJson<String>(currency),
      'month': serializer.toJson<int>(month),
      'year': serializer.toJson<int>(year),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Budget copyWith({
    String? uid,
    String? userId,
    String? category,
    double? limitAmount,
    String? currency,
    int? month,
    int? year,
    DateTime? createdAt,
  }) => Budget(
    uid: uid ?? this.uid,
    userId: userId ?? this.userId,
    category: category ?? this.category,
    limitAmount: limitAmount ?? this.limitAmount,
    currency: currency ?? this.currency,
    month: month ?? this.month,
    year: year ?? this.year,
    createdAt: createdAt ?? this.createdAt,
  );
  Budget copyWithCompanion(BudgetsCompanion data) {
    return Budget(
      uid: data.uid.present ? data.uid.value : this.uid,
      userId: data.userId.present ? data.userId.value : this.userId,
      category: data.category.present ? data.category.value : this.category,
      limitAmount: data.limitAmount.present
          ? data.limitAmount.value
          : this.limitAmount,
      currency: data.currency.present ? data.currency.value : this.currency,
      month: data.month.present ? data.month.value : this.month,
      year: data.year.present ? data.year.value : this.year,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Budget(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('category: $category, ')
          ..write('limitAmount: $limitAmount, ')
          ..write('currency: $currency, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    uid,
    userId,
    category,
    limitAmount,
    currency,
    month,
    year,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Budget &&
          other.uid == this.uid &&
          other.userId == this.userId &&
          other.category == this.category &&
          other.limitAmount == this.limitAmount &&
          other.currency == this.currency &&
          other.month == this.month &&
          other.year == this.year &&
          other.createdAt == this.createdAt);
}

class BudgetsCompanion extends UpdateCompanion<Budget> {
  final Value<String> uid;
  final Value<String> userId;
  final Value<String> category;
  final Value<double> limitAmount;
  final Value<String> currency;
  final Value<int> month;
  final Value<int> year;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BudgetsCompanion({
    this.uid = const Value.absent(),
    this.userId = const Value.absent(),
    this.category = const Value.absent(),
    this.limitAmount = const Value.absent(),
    this.currency = const Value.absent(),
    this.month = const Value.absent(),
    this.year = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BudgetsCompanion.insert({
    required String uid,
    required String userId,
    required String category,
    required double limitAmount,
    required String currency,
    required int month,
    required int year,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : uid = Value(uid),
       userId = Value(userId),
       category = Value(category),
       limitAmount = Value(limitAmount),
       currency = Value(currency),
       month = Value(month),
       year = Value(year),
       createdAt = Value(createdAt);
  static Insertable<Budget> custom({
    Expression<String>? uid,
    Expression<String>? userId,
    Expression<String>? category,
    Expression<double>? limitAmount,
    Expression<String>? currency,
    Expression<int>? month,
    Expression<int>? year,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (userId != null) 'user_id': userId,
      if (category != null) 'category': category,
      if (limitAmount != null) 'limit_amount': limitAmount,
      if (currency != null) 'currency': currency,
      if (month != null) 'month': month,
      if (year != null) 'year': year,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BudgetsCompanion copyWith({
    Value<String>? uid,
    Value<String>? userId,
    Value<String>? category,
    Value<double>? limitAmount,
    Value<String>? currency,
    Value<int>? month,
    Value<int>? year,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return BudgetsCompanion(
      uid: uid ?? this.uid,
      userId: userId ?? this.userId,
      category: category ?? this.category,
      limitAmount: limitAmount ?? this.limitAmount,
      currency: currency ?? this.currency,
      month: month ?? this.month,
      year: year ?? this.year,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (limitAmount.present) {
      map['limit_amount'] = Variable<double>(limitAmount.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (month.present) {
      map['month'] = Variable<int>(month.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BudgetsCompanion(')
          ..write('uid: $uid, ')
          ..write('userId: $userId, ')
          ..write('category: $category, ')
          ..write('limitAmount: $limitAmount, ')
          ..write('currency: $currency, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SharedExpensesTable extends SharedExpenses
    with TableInfo<$SharedExpensesTable, SharedExpense> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SharedExpensesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _familyGroupIdMeta = const VerificationMeta(
    'familyGroupId',
  );
  @override
  late final GeneratedColumn<String> familyGroupId = GeneratedColumn<String>(
    'family_group_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payerUserIdMeta = const VerificationMeta(
    'payerUserId',
  );
  @override
  late final GeneratedColumn<String> payerUserId = GeneratedColumn<String>(
    'payer_user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalAmountMeta = const VerificationMeta(
    'totalAmount',
  );
  @override
  late final GeneratedColumn<double> totalAmount = GeneratedColumn<double>(
    'total_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _splitModeMeta = const VerificationMeta(
    'splitMode',
  );
  @override
  late final GeneratedColumn<String> splitMode = GeneratedColumn<String>(
    'split_mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firestoreIdMeta = const VerificationMeta(
    'firestoreId',
  );
  @override
  late final GeneratedColumn<String> firestoreId = GeneratedColumn<String>(
    'firestore_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    uid,
    familyGroupId,
    payerUserId,
    title,
    totalAmount,
    currency,
    category,
    splitMode,
    date,
    note,
    status,
    createdAt,
    firestoreId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shared_expenses';
  @override
  VerificationContext validateIntegrity(
    Insertable<SharedExpense> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('family_group_id')) {
      context.handle(
        _familyGroupIdMeta,
        familyGroupId.isAcceptableOrUnknown(
          data['family_group_id']!,
          _familyGroupIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_familyGroupIdMeta);
    }
    if (data.containsKey('payer_user_id')) {
      context.handle(
        _payerUserIdMeta,
        payerUserId.isAcceptableOrUnknown(
          data['payer_user_id']!,
          _payerUserIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_payerUserIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('total_amount')) {
      context.handle(
        _totalAmountMeta,
        totalAmount.isAcceptableOrUnknown(
          data['total_amount']!,
          _totalAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalAmountMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('split_mode')) {
      context.handle(
        _splitModeMeta,
        splitMode.isAcceptableOrUnknown(data['split_mode']!, _splitModeMeta),
      );
    } else if (isInserting) {
      context.missing(_splitModeMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('firestore_id')) {
      context.handle(
        _firestoreIdMeta,
        firestoreId.isAcceptableOrUnknown(
          data['firestore_id']!,
          _firestoreIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  SharedExpense map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SharedExpense(
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      familyGroupId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}family_group_id'],
      )!,
      payerUserId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payer_user_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      totalAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_amount'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      splitMode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}split_mode'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      firestoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firestore_id'],
      ),
    );
  }

  @override
  $SharedExpensesTable createAlias(String alias) {
    return $SharedExpensesTable(attachedDatabase, alias);
  }
}

class SharedExpense extends DataClass implements Insertable<SharedExpense> {
  final String uid;
  final String familyGroupId;
  final String payerUserId;
  final String title;
  final double totalAmount;
  final String currency;
  final String category;
  final String splitMode;
  final DateTime date;
  final String? note;
  final String status;
  final DateTime createdAt;
  final String? firestoreId;
  const SharedExpense({
    required this.uid,
    required this.familyGroupId,
    required this.payerUserId,
    required this.title,
    required this.totalAmount,
    required this.currency,
    required this.category,
    required this.splitMode,
    required this.date,
    this.note,
    required this.status,
    required this.createdAt,
    this.firestoreId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['family_group_id'] = Variable<String>(familyGroupId);
    map['payer_user_id'] = Variable<String>(payerUserId);
    map['title'] = Variable<String>(title);
    map['total_amount'] = Variable<double>(totalAmount);
    map['currency'] = Variable<String>(currency);
    map['category'] = Variable<String>(category);
    map['split_mode'] = Variable<String>(splitMode);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || firestoreId != null) {
      map['firestore_id'] = Variable<String>(firestoreId);
    }
    return map;
  }

  SharedExpensesCompanion toCompanion(bool nullToAbsent) {
    return SharedExpensesCompanion(
      uid: Value(uid),
      familyGroupId: Value(familyGroupId),
      payerUserId: Value(payerUserId),
      title: Value(title),
      totalAmount: Value(totalAmount),
      currency: Value(currency),
      category: Value(category),
      splitMode: Value(splitMode),
      date: Value(date),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      status: Value(status),
      createdAt: Value(createdAt),
      firestoreId: firestoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(firestoreId),
    );
  }

  factory SharedExpense.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SharedExpense(
      uid: serializer.fromJson<String>(json['uid']),
      familyGroupId: serializer.fromJson<String>(json['familyGroupId']),
      payerUserId: serializer.fromJson<String>(json['payerUserId']),
      title: serializer.fromJson<String>(json['title']),
      totalAmount: serializer.fromJson<double>(json['totalAmount']),
      currency: serializer.fromJson<String>(json['currency']),
      category: serializer.fromJson<String>(json['category']),
      splitMode: serializer.fromJson<String>(json['splitMode']),
      date: serializer.fromJson<DateTime>(json['date']),
      note: serializer.fromJson<String?>(json['note']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      firestoreId: serializer.fromJson<String?>(json['firestoreId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'familyGroupId': serializer.toJson<String>(familyGroupId),
      'payerUserId': serializer.toJson<String>(payerUserId),
      'title': serializer.toJson<String>(title),
      'totalAmount': serializer.toJson<double>(totalAmount),
      'currency': serializer.toJson<String>(currency),
      'category': serializer.toJson<String>(category),
      'splitMode': serializer.toJson<String>(splitMode),
      'date': serializer.toJson<DateTime>(date),
      'note': serializer.toJson<String?>(note),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'firestoreId': serializer.toJson<String?>(firestoreId),
    };
  }

  SharedExpense copyWith({
    String? uid,
    String? familyGroupId,
    String? payerUserId,
    String? title,
    double? totalAmount,
    String? currency,
    String? category,
    String? splitMode,
    DateTime? date,
    Value<String?> note = const Value.absent(),
    String? status,
    DateTime? createdAt,
    Value<String?> firestoreId = const Value.absent(),
  }) => SharedExpense(
    uid: uid ?? this.uid,
    familyGroupId: familyGroupId ?? this.familyGroupId,
    payerUserId: payerUserId ?? this.payerUserId,
    title: title ?? this.title,
    totalAmount: totalAmount ?? this.totalAmount,
    currency: currency ?? this.currency,
    category: category ?? this.category,
    splitMode: splitMode ?? this.splitMode,
    date: date ?? this.date,
    note: note.present ? note.value : this.note,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
    firestoreId: firestoreId.present ? firestoreId.value : this.firestoreId,
  );
  SharedExpense copyWithCompanion(SharedExpensesCompanion data) {
    return SharedExpense(
      uid: data.uid.present ? data.uid.value : this.uid,
      familyGroupId: data.familyGroupId.present
          ? data.familyGroupId.value
          : this.familyGroupId,
      payerUserId: data.payerUserId.present
          ? data.payerUserId.value
          : this.payerUserId,
      title: data.title.present ? data.title.value : this.title,
      totalAmount: data.totalAmount.present
          ? data.totalAmount.value
          : this.totalAmount,
      currency: data.currency.present ? data.currency.value : this.currency,
      category: data.category.present ? data.category.value : this.category,
      splitMode: data.splitMode.present ? data.splitMode.value : this.splitMode,
      date: data.date.present ? data.date.value : this.date,
      note: data.note.present ? data.note.value : this.note,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      firestoreId: data.firestoreId.present
          ? data.firestoreId.value
          : this.firestoreId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SharedExpense(')
          ..write('uid: $uid, ')
          ..write('familyGroupId: $familyGroupId, ')
          ..write('payerUserId: $payerUserId, ')
          ..write('title: $title, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('currency: $currency, ')
          ..write('category: $category, ')
          ..write('splitMode: $splitMode, ')
          ..write('date: $date, ')
          ..write('note: $note, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('firestoreId: $firestoreId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    uid,
    familyGroupId,
    payerUserId,
    title,
    totalAmount,
    currency,
    category,
    splitMode,
    date,
    note,
    status,
    createdAt,
    firestoreId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SharedExpense &&
          other.uid == this.uid &&
          other.familyGroupId == this.familyGroupId &&
          other.payerUserId == this.payerUserId &&
          other.title == this.title &&
          other.totalAmount == this.totalAmount &&
          other.currency == this.currency &&
          other.category == this.category &&
          other.splitMode == this.splitMode &&
          other.date == this.date &&
          other.note == this.note &&
          other.status == this.status &&
          other.createdAt == this.createdAt &&
          other.firestoreId == this.firestoreId);
}

class SharedExpensesCompanion extends UpdateCompanion<SharedExpense> {
  final Value<String> uid;
  final Value<String> familyGroupId;
  final Value<String> payerUserId;
  final Value<String> title;
  final Value<double> totalAmount;
  final Value<String> currency;
  final Value<String> category;
  final Value<String> splitMode;
  final Value<DateTime> date;
  final Value<String?> note;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<String?> firestoreId;
  final Value<int> rowid;
  const SharedExpensesCompanion({
    this.uid = const Value.absent(),
    this.familyGroupId = const Value.absent(),
    this.payerUserId = const Value.absent(),
    this.title = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.currency = const Value.absent(),
    this.category = const Value.absent(),
    this.splitMode = const Value.absent(),
    this.date = const Value.absent(),
    this.note = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SharedExpensesCompanion.insert({
    required String uid,
    required String familyGroupId,
    required String payerUserId,
    required String title,
    required double totalAmount,
    required String currency,
    required String category,
    required String splitMode,
    required DateTime date,
    this.note = const Value.absent(),
    this.status = const Value.absent(),
    required DateTime createdAt,
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uid = Value(uid),
       familyGroupId = Value(familyGroupId),
       payerUserId = Value(payerUserId),
       title = Value(title),
       totalAmount = Value(totalAmount),
       currency = Value(currency),
       category = Value(category),
       splitMode = Value(splitMode),
       date = Value(date),
       createdAt = Value(createdAt);
  static Insertable<SharedExpense> custom({
    Expression<String>? uid,
    Expression<String>? familyGroupId,
    Expression<String>? payerUserId,
    Expression<String>? title,
    Expression<double>? totalAmount,
    Expression<String>? currency,
    Expression<String>? category,
    Expression<String>? splitMode,
    Expression<DateTime>? date,
    Expression<String>? note,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<String>? firestoreId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (familyGroupId != null) 'family_group_id': familyGroupId,
      if (payerUserId != null) 'payer_user_id': payerUserId,
      if (title != null) 'title': title,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (currency != null) 'currency': currency,
      if (category != null) 'category': category,
      if (splitMode != null) 'split_mode': splitMode,
      if (date != null) 'date': date,
      if (note != null) 'note': note,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (firestoreId != null) 'firestore_id': firestoreId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SharedExpensesCompanion copyWith({
    Value<String>? uid,
    Value<String>? familyGroupId,
    Value<String>? payerUserId,
    Value<String>? title,
    Value<double>? totalAmount,
    Value<String>? currency,
    Value<String>? category,
    Value<String>? splitMode,
    Value<DateTime>? date,
    Value<String?>? note,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<String?>? firestoreId,
    Value<int>? rowid,
  }) {
    return SharedExpensesCompanion(
      uid: uid ?? this.uid,
      familyGroupId: familyGroupId ?? this.familyGroupId,
      payerUserId: payerUserId ?? this.payerUserId,
      title: title ?? this.title,
      totalAmount: totalAmount ?? this.totalAmount,
      currency: currency ?? this.currency,
      category: category ?? this.category,
      splitMode: splitMode ?? this.splitMode,
      date: date ?? this.date,
      note: note ?? this.note,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      firestoreId: firestoreId ?? this.firestoreId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (familyGroupId.present) {
      map['family_group_id'] = Variable<String>(familyGroupId.value);
    }
    if (payerUserId.present) {
      map['payer_user_id'] = Variable<String>(payerUserId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (splitMode.present) {
      map['split_mode'] = Variable<String>(splitMode.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (firestoreId.present) {
      map['firestore_id'] = Variable<String>(firestoreId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SharedExpensesCompanion(')
          ..write('uid: $uid, ')
          ..write('familyGroupId: $familyGroupId, ')
          ..write('payerUserId: $payerUserId, ')
          ..write('title: $title, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('currency: $currency, ')
          ..write('category: $category, ')
          ..write('splitMode: $splitMode, ')
          ..write('date: $date, ')
          ..write('note: $note, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SplitItemsTable extends SplitItems
    with TableInfo<$SplitItemsTable, SplitItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SplitItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _sharedExpenseIdMeta = const VerificationMeta(
    'sharedExpenseId',
  );
  @override
  late final GeneratedColumn<String> sharedExpenseId = GeneratedColumn<String>(
    'shared_expense_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _percentageMeta = const VerificationMeta(
    'percentage',
  );
  @override
  late final GeneratedColumn<double> percentage = GeneratedColumn<double>(
    'percentage',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedColumn<bool> isPaid = GeneratedColumn<bool>(
    'is_paid',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_paid" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _paidAtMeta = const VerificationMeta('paidAt');
  @override
  late final GeneratedColumn<DateTime> paidAt = GeneratedColumn<DateTime>(
    'paid_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sharedExpenseId,
    userId,
    displayName,
    amount,
    percentage,
    isPaid,
    paidAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'split_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<SplitItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('shared_expense_id')) {
      context.handle(
        _sharedExpenseIdMeta,
        sharedExpenseId.isAcceptableOrUnknown(
          data['shared_expense_id']!,
          _sharedExpenseIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sharedExpenseIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('percentage')) {
      context.handle(
        _percentageMeta,
        percentage.isAcceptableOrUnknown(data['percentage']!, _percentageMeta),
      );
    }
    if (data.containsKey('is_paid')) {
      context.handle(
        _isPaidMeta,
        isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta),
      );
    }
    if (data.containsKey('paid_at')) {
      context.handle(
        _paidAtMeta,
        paidAt.isAcceptableOrUnknown(data['paid_at']!, _paidAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SplitItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SplitItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      sharedExpenseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shared_expense_id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      percentage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}percentage'],
      )!,
      isPaid: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_paid'],
      )!,
      paidAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}paid_at'],
      ),
    );
  }

  @override
  $SplitItemsTable createAlias(String alias) {
    return $SplitItemsTable(attachedDatabase, alias);
  }
}

class SplitItem extends DataClass implements Insertable<SplitItem> {
  final int id;
  final String sharedExpenseId;
  final String userId;
  final String displayName;
  final double amount;
  final double percentage;
  final bool isPaid;
  final DateTime? paidAt;
  const SplitItem({
    required this.id,
    required this.sharedExpenseId,
    required this.userId,
    required this.displayName,
    required this.amount,
    required this.percentage,
    required this.isPaid,
    this.paidAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['shared_expense_id'] = Variable<String>(sharedExpenseId);
    map['user_id'] = Variable<String>(userId);
    map['display_name'] = Variable<String>(displayName);
    map['amount'] = Variable<double>(amount);
    map['percentage'] = Variable<double>(percentage);
    map['is_paid'] = Variable<bool>(isPaid);
    if (!nullToAbsent || paidAt != null) {
      map['paid_at'] = Variable<DateTime>(paidAt);
    }
    return map;
  }

  SplitItemsCompanion toCompanion(bool nullToAbsent) {
    return SplitItemsCompanion(
      id: Value(id),
      sharedExpenseId: Value(sharedExpenseId),
      userId: Value(userId),
      displayName: Value(displayName),
      amount: Value(amount),
      percentage: Value(percentage),
      isPaid: Value(isPaid),
      paidAt: paidAt == null && nullToAbsent
          ? const Value.absent()
          : Value(paidAt),
    );
  }

  factory SplitItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SplitItem(
      id: serializer.fromJson<int>(json['id']),
      sharedExpenseId: serializer.fromJson<String>(json['sharedExpenseId']),
      userId: serializer.fromJson<String>(json['userId']),
      displayName: serializer.fromJson<String>(json['displayName']),
      amount: serializer.fromJson<double>(json['amount']),
      percentage: serializer.fromJson<double>(json['percentage']),
      isPaid: serializer.fromJson<bool>(json['isPaid']),
      paidAt: serializer.fromJson<DateTime?>(json['paidAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sharedExpenseId': serializer.toJson<String>(sharedExpenseId),
      'userId': serializer.toJson<String>(userId),
      'displayName': serializer.toJson<String>(displayName),
      'amount': serializer.toJson<double>(amount),
      'percentage': serializer.toJson<double>(percentage),
      'isPaid': serializer.toJson<bool>(isPaid),
      'paidAt': serializer.toJson<DateTime?>(paidAt),
    };
  }

  SplitItem copyWith({
    int? id,
    String? sharedExpenseId,
    String? userId,
    String? displayName,
    double? amount,
    double? percentage,
    bool? isPaid,
    Value<DateTime?> paidAt = const Value.absent(),
  }) => SplitItem(
    id: id ?? this.id,
    sharedExpenseId: sharedExpenseId ?? this.sharedExpenseId,
    userId: userId ?? this.userId,
    displayName: displayName ?? this.displayName,
    amount: amount ?? this.amount,
    percentage: percentage ?? this.percentage,
    isPaid: isPaid ?? this.isPaid,
    paidAt: paidAt.present ? paidAt.value : this.paidAt,
  );
  SplitItem copyWithCompanion(SplitItemsCompanion data) {
    return SplitItem(
      id: data.id.present ? data.id.value : this.id,
      sharedExpenseId: data.sharedExpenseId.present
          ? data.sharedExpenseId.value
          : this.sharedExpenseId,
      userId: data.userId.present ? data.userId.value : this.userId,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      amount: data.amount.present ? data.amount.value : this.amount,
      percentage: data.percentage.present
          ? data.percentage.value
          : this.percentage,
      isPaid: data.isPaid.present ? data.isPaid.value : this.isPaid,
      paidAt: data.paidAt.present ? data.paidAt.value : this.paidAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SplitItem(')
          ..write('id: $id, ')
          ..write('sharedExpenseId: $sharedExpenseId, ')
          ..write('userId: $userId, ')
          ..write('displayName: $displayName, ')
          ..write('amount: $amount, ')
          ..write('percentage: $percentage, ')
          ..write('isPaid: $isPaid, ')
          ..write('paidAt: $paidAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    sharedExpenseId,
    userId,
    displayName,
    amount,
    percentage,
    isPaid,
    paidAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SplitItem &&
          other.id == this.id &&
          other.sharedExpenseId == this.sharedExpenseId &&
          other.userId == this.userId &&
          other.displayName == this.displayName &&
          other.amount == this.amount &&
          other.percentage == this.percentage &&
          other.isPaid == this.isPaid &&
          other.paidAt == this.paidAt);
}

class SplitItemsCompanion extends UpdateCompanion<SplitItem> {
  final Value<int> id;
  final Value<String> sharedExpenseId;
  final Value<String> userId;
  final Value<String> displayName;
  final Value<double> amount;
  final Value<double> percentage;
  final Value<bool> isPaid;
  final Value<DateTime?> paidAt;
  const SplitItemsCompanion({
    this.id = const Value.absent(),
    this.sharedExpenseId = const Value.absent(),
    this.userId = const Value.absent(),
    this.displayName = const Value.absent(),
    this.amount = const Value.absent(),
    this.percentage = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.paidAt = const Value.absent(),
  });
  SplitItemsCompanion.insert({
    this.id = const Value.absent(),
    required String sharedExpenseId,
    required String userId,
    required String displayName,
    required double amount,
    this.percentage = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.paidAt = const Value.absent(),
  }) : sharedExpenseId = Value(sharedExpenseId),
       userId = Value(userId),
       displayName = Value(displayName),
       amount = Value(amount);
  static Insertable<SplitItem> custom({
    Expression<int>? id,
    Expression<String>? sharedExpenseId,
    Expression<String>? userId,
    Expression<String>? displayName,
    Expression<double>? amount,
    Expression<double>? percentage,
    Expression<bool>? isPaid,
    Expression<DateTime>? paidAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sharedExpenseId != null) 'shared_expense_id': sharedExpenseId,
      if (userId != null) 'user_id': userId,
      if (displayName != null) 'display_name': displayName,
      if (amount != null) 'amount': amount,
      if (percentage != null) 'percentage': percentage,
      if (isPaid != null) 'is_paid': isPaid,
      if (paidAt != null) 'paid_at': paidAt,
    });
  }

  SplitItemsCompanion copyWith({
    Value<int>? id,
    Value<String>? sharedExpenseId,
    Value<String>? userId,
    Value<String>? displayName,
    Value<double>? amount,
    Value<double>? percentage,
    Value<bool>? isPaid,
    Value<DateTime?>? paidAt,
  }) {
    return SplitItemsCompanion(
      id: id ?? this.id,
      sharedExpenseId: sharedExpenseId ?? this.sharedExpenseId,
      userId: userId ?? this.userId,
      displayName: displayName ?? this.displayName,
      amount: amount ?? this.amount,
      percentage: percentage ?? this.percentage,
      isPaid: isPaid ?? this.isPaid,
      paidAt: paidAt ?? this.paidAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sharedExpenseId.present) {
      map['shared_expense_id'] = Variable<String>(sharedExpenseId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<double>(percentage.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (paidAt.present) {
      map['paid_at'] = Variable<DateTime>(paidAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SplitItemsCompanion(')
          ..write('id: $id, ')
          ..write('sharedExpenseId: $sharedExpenseId, ')
          ..write('userId: $userId, ')
          ..write('displayName: $displayName, ')
          ..write('amount: $amount, ')
          ..write('percentage: $percentage, ')
          ..write('isPaid: $isPaid, ')
          ..write('paidAt: $paidAt')
          ..write(')'))
        .toString();
  }
}

class $FamilyGroupsTable extends FamilyGroups
    with TableInfo<$FamilyGroupsTable, FamilyGroup> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilyGroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdByUserIdMeta = const VerificationMeta(
    'createdByUserId',
  );
  @override
  late final GeneratedColumn<String> createdByUserId = GeneratedColumn<String>(
    'created_by_user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _memberIdsJsonMeta = const VerificationMeta(
    'memberIdsJson',
  );
  @override
  late final GeneratedColumn<String> memberIdsJson = GeneratedColumn<String>(
    'member_ids_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _memberNamesJsonMeta = const VerificationMeta(
    'memberNamesJson',
  );
  @override
  late final GeneratedColumn<String> memberNamesJson = GeneratedColumn<String>(
    'member_names_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _inviteCodeMeta = const VerificationMeta(
    'inviteCode',
  );
  @override
  late final GeneratedColumn<String> inviteCode = GeneratedColumn<String>(
    'invite_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firestoreIdMeta = const VerificationMeta(
    'firestoreId',
  );
  @override
  late final GeneratedColumn<String> firestoreId = GeneratedColumn<String>(
    'firestore_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    uid,
    name,
    createdByUserId,
    memberIdsJson,
    memberNamesJson,
    inviteCode,
    createdAt,
    firestoreId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family_groups';
  @override
  VerificationContext validateIntegrity(
    Insertable<FamilyGroup> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_by_user_id')) {
      context.handle(
        _createdByUserIdMeta,
        createdByUserId.isAcceptableOrUnknown(
          data['created_by_user_id']!,
          _createdByUserIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdByUserIdMeta);
    }
    if (data.containsKey('member_ids_json')) {
      context.handle(
        _memberIdsJsonMeta,
        memberIdsJson.isAcceptableOrUnknown(
          data['member_ids_json']!,
          _memberIdsJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_memberIdsJsonMeta);
    }
    if (data.containsKey('member_names_json')) {
      context.handle(
        _memberNamesJsonMeta,
        memberNamesJson.isAcceptableOrUnknown(
          data['member_names_json']!,
          _memberNamesJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_memberNamesJsonMeta);
    }
    if (data.containsKey('invite_code')) {
      context.handle(
        _inviteCodeMeta,
        inviteCode.isAcceptableOrUnknown(data['invite_code']!, _inviteCodeMeta),
      );
    } else if (isInserting) {
      context.missing(_inviteCodeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('firestore_id')) {
      context.handle(
        _firestoreIdMeta,
        firestoreId.isAcceptableOrUnknown(
          data['firestore_id']!,
          _firestoreIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uid};
  @override
  FamilyGroup map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilyGroup(
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      createdByUserId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_by_user_id'],
      )!,
      memberIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}member_ids_json'],
      )!,
      memberNamesJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}member_names_json'],
      )!,
      inviteCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}invite_code'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      firestoreId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firestore_id'],
      ),
    );
  }

  @override
  $FamilyGroupsTable createAlias(String alias) {
    return $FamilyGroupsTable(attachedDatabase, alias);
  }
}

class FamilyGroup extends DataClass implements Insertable<FamilyGroup> {
  final String uid;
  final String name;
  final String createdByUserId;
  final String memberIdsJson;
  final String memberNamesJson;
  final String inviteCode;
  final DateTime createdAt;
  final String? firestoreId;
  const FamilyGroup({
    required this.uid,
    required this.name,
    required this.createdByUserId,
    required this.memberIdsJson,
    required this.memberNamesJson,
    required this.inviteCode,
    required this.createdAt,
    this.firestoreId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uid'] = Variable<String>(uid);
    map['name'] = Variable<String>(name);
    map['created_by_user_id'] = Variable<String>(createdByUserId);
    map['member_ids_json'] = Variable<String>(memberIdsJson);
    map['member_names_json'] = Variable<String>(memberNamesJson);
    map['invite_code'] = Variable<String>(inviteCode);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || firestoreId != null) {
      map['firestore_id'] = Variable<String>(firestoreId);
    }
    return map;
  }

  FamilyGroupsCompanion toCompanion(bool nullToAbsent) {
    return FamilyGroupsCompanion(
      uid: Value(uid),
      name: Value(name),
      createdByUserId: Value(createdByUserId),
      memberIdsJson: Value(memberIdsJson),
      memberNamesJson: Value(memberNamesJson),
      inviteCode: Value(inviteCode),
      createdAt: Value(createdAt),
      firestoreId: firestoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(firestoreId),
    );
  }

  factory FamilyGroup.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilyGroup(
      uid: serializer.fromJson<String>(json['uid']),
      name: serializer.fromJson<String>(json['name']),
      createdByUserId: serializer.fromJson<String>(json['createdByUserId']),
      memberIdsJson: serializer.fromJson<String>(json['memberIdsJson']),
      memberNamesJson: serializer.fromJson<String>(json['memberNamesJson']),
      inviteCode: serializer.fromJson<String>(json['inviteCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      firestoreId: serializer.fromJson<String?>(json['firestoreId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uid': serializer.toJson<String>(uid),
      'name': serializer.toJson<String>(name),
      'createdByUserId': serializer.toJson<String>(createdByUserId),
      'memberIdsJson': serializer.toJson<String>(memberIdsJson),
      'memberNamesJson': serializer.toJson<String>(memberNamesJson),
      'inviteCode': serializer.toJson<String>(inviteCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'firestoreId': serializer.toJson<String?>(firestoreId),
    };
  }

  FamilyGroup copyWith({
    String? uid,
    String? name,
    String? createdByUserId,
    String? memberIdsJson,
    String? memberNamesJson,
    String? inviteCode,
    DateTime? createdAt,
    Value<String?> firestoreId = const Value.absent(),
  }) => FamilyGroup(
    uid: uid ?? this.uid,
    name: name ?? this.name,
    createdByUserId: createdByUserId ?? this.createdByUserId,
    memberIdsJson: memberIdsJson ?? this.memberIdsJson,
    memberNamesJson: memberNamesJson ?? this.memberNamesJson,
    inviteCode: inviteCode ?? this.inviteCode,
    createdAt: createdAt ?? this.createdAt,
    firestoreId: firestoreId.present ? firestoreId.value : this.firestoreId,
  );
  FamilyGroup copyWithCompanion(FamilyGroupsCompanion data) {
    return FamilyGroup(
      uid: data.uid.present ? data.uid.value : this.uid,
      name: data.name.present ? data.name.value : this.name,
      createdByUserId: data.createdByUserId.present
          ? data.createdByUserId.value
          : this.createdByUserId,
      memberIdsJson: data.memberIdsJson.present
          ? data.memberIdsJson.value
          : this.memberIdsJson,
      memberNamesJson: data.memberNamesJson.present
          ? data.memberNamesJson.value
          : this.memberNamesJson,
      inviteCode: data.inviteCode.present
          ? data.inviteCode.value
          : this.inviteCode,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      firestoreId: data.firestoreId.present
          ? data.firestoreId.value
          : this.firestoreId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FamilyGroup(')
          ..write('uid: $uid, ')
          ..write('name: $name, ')
          ..write('createdByUserId: $createdByUserId, ')
          ..write('memberIdsJson: $memberIdsJson, ')
          ..write('memberNamesJson: $memberNamesJson, ')
          ..write('inviteCode: $inviteCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('firestoreId: $firestoreId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    uid,
    name,
    createdByUserId,
    memberIdsJson,
    memberNamesJson,
    inviteCode,
    createdAt,
    firestoreId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilyGroup &&
          other.uid == this.uid &&
          other.name == this.name &&
          other.createdByUserId == this.createdByUserId &&
          other.memberIdsJson == this.memberIdsJson &&
          other.memberNamesJson == this.memberNamesJson &&
          other.inviteCode == this.inviteCode &&
          other.createdAt == this.createdAt &&
          other.firestoreId == this.firestoreId);
}

class FamilyGroupsCompanion extends UpdateCompanion<FamilyGroup> {
  final Value<String> uid;
  final Value<String> name;
  final Value<String> createdByUserId;
  final Value<String> memberIdsJson;
  final Value<String> memberNamesJson;
  final Value<String> inviteCode;
  final Value<DateTime> createdAt;
  final Value<String?> firestoreId;
  final Value<int> rowid;
  const FamilyGroupsCompanion({
    this.uid = const Value.absent(),
    this.name = const Value.absent(),
    this.createdByUserId = const Value.absent(),
    this.memberIdsJson = const Value.absent(),
    this.memberNamesJson = const Value.absent(),
    this.inviteCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FamilyGroupsCompanion.insert({
    required String uid,
    required String name,
    required String createdByUserId,
    required String memberIdsJson,
    required String memberNamesJson,
    required String inviteCode,
    required DateTime createdAt,
    this.firestoreId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uid = Value(uid),
       name = Value(name),
       createdByUserId = Value(createdByUserId),
       memberIdsJson = Value(memberIdsJson),
       memberNamesJson = Value(memberNamesJson),
       inviteCode = Value(inviteCode),
       createdAt = Value(createdAt);
  static Insertable<FamilyGroup> custom({
    Expression<String>? uid,
    Expression<String>? name,
    Expression<String>? createdByUserId,
    Expression<String>? memberIdsJson,
    Expression<String>? memberNamesJson,
    Expression<String>? inviteCode,
    Expression<DateTime>? createdAt,
    Expression<String>? firestoreId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uid != null) 'uid': uid,
      if (name != null) 'name': name,
      if (createdByUserId != null) 'created_by_user_id': createdByUserId,
      if (memberIdsJson != null) 'member_ids_json': memberIdsJson,
      if (memberNamesJson != null) 'member_names_json': memberNamesJson,
      if (inviteCode != null) 'invite_code': inviteCode,
      if (createdAt != null) 'created_at': createdAt,
      if (firestoreId != null) 'firestore_id': firestoreId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FamilyGroupsCompanion copyWith({
    Value<String>? uid,
    Value<String>? name,
    Value<String>? createdByUserId,
    Value<String>? memberIdsJson,
    Value<String>? memberNamesJson,
    Value<String>? inviteCode,
    Value<DateTime>? createdAt,
    Value<String?>? firestoreId,
    Value<int>? rowid,
  }) {
    return FamilyGroupsCompanion(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      createdByUserId: createdByUserId ?? this.createdByUserId,
      memberIdsJson: memberIdsJson ?? this.memberIdsJson,
      memberNamesJson: memberNamesJson ?? this.memberNamesJson,
      inviteCode: inviteCode ?? this.inviteCode,
      createdAt: createdAt ?? this.createdAt,
      firestoreId: firestoreId ?? this.firestoreId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdByUserId.present) {
      map['created_by_user_id'] = Variable<String>(createdByUserId.value);
    }
    if (memberIdsJson.present) {
      map['member_ids_json'] = Variable<String>(memberIdsJson.value);
    }
    if (memberNamesJson.present) {
      map['member_names_json'] = Variable<String>(memberNamesJson.value);
    }
    if (inviteCode.present) {
      map['invite_code'] = Variable<String>(inviteCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (firestoreId.present) {
      map['firestore_id'] = Variable<String>(firestoreId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilyGroupsCompanion(')
          ..write('uid: $uid, ')
          ..write('name: $name, ')
          ..write('createdByUserId: $createdByUserId, ')
          ..write('memberIdsJson: $memberIdsJson, ')
          ..write('memberNamesJson: $memberNamesJson, ')
          ..write('inviteCode: $inviteCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('firestoreId: $firestoreId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExchangeRatesTable extends ExchangeRates
    with TableInfo<$ExchangeRatesTable, ExchangeRate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExchangeRatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _officialMeta = const VerificationMeta(
    'official',
  );
  @override
  late final GeneratedColumn<double> official = GeneratedColumn<double>(
    'official',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _blueMeta = const VerificationMeta('blue');
  @override
  late final GeneratedColumn<double> blue = GeneratedColumn<double>(
    'blue',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mepMeta = const VerificationMeta('mep');
  @override
  late final GeneratedColumn<double> mep = GeneratedColumn<double>(
    'mep',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _selectedTypeMeta = const VerificationMeta(
    'selectedType',
  );
  @override
  late final GeneratedColumn<String> selectedType = GeneratedColumn<String>(
    'selected_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('blue'),
  );
  static const VerificationMeta _manualRateMeta = const VerificationMeta(
    'manualRate',
  );
  @override
  late final GeneratedColumn<double> manualRate = GeneratedColumn<double>(
    'manual_rate',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isManualMeta = const VerificationMeta(
    'isManual',
  );
  @override
  late final GeneratedColumn<bool> isManual = GeneratedColumn<bool>(
    'is_manual',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_manual" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _lastUpdatedMeta = const VerificationMeta(
    'lastUpdated',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
    'last_updated',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    official,
    blue,
    mep,
    selectedType,
    manualRate,
    isManual,
    lastUpdated,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exchange_rates';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExchangeRate> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('official')) {
      context.handle(
        _officialMeta,
        official.isAcceptableOrUnknown(data['official']!, _officialMeta),
      );
    } else if (isInserting) {
      context.missing(_officialMeta);
    }
    if (data.containsKey('blue')) {
      context.handle(
        _blueMeta,
        blue.isAcceptableOrUnknown(data['blue']!, _blueMeta),
      );
    } else if (isInserting) {
      context.missing(_blueMeta);
    }
    if (data.containsKey('mep')) {
      context.handle(
        _mepMeta,
        mep.isAcceptableOrUnknown(data['mep']!, _mepMeta),
      );
    } else if (isInserting) {
      context.missing(_mepMeta);
    }
    if (data.containsKey('selected_type')) {
      context.handle(
        _selectedTypeMeta,
        selectedType.isAcceptableOrUnknown(
          data['selected_type']!,
          _selectedTypeMeta,
        ),
      );
    }
    if (data.containsKey('manual_rate')) {
      context.handle(
        _manualRateMeta,
        manualRate.isAcceptableOrUnknown(data['manual_rate']!, _manualRateMeta),
      );
    }
    if (data.containsKey('is_manual')) {
      context.handle(
        _isManualMeta,
        isManual.isAcceptableOrUnknown(data['is_manual']!, _isManualMeta),
      );
    }
    if (data.containsKey('last_updated')) {
      context.handle(
        _lastUpdatedMeta,
        lastUpdated.isAcceptableOrUnknown(
          data['last_updated']!,
          _lastUpdatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExchangeRate map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExchangeRate(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      official: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}official'],
      )!,
      blue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}blue'],
      )!,
      mep: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}mep'],
      )!,
      selectedType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selected_type'],
      )!,
      manualRate: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}manual_rate'],
      ),
      isManual: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_manual'],
      )!,
      lastUpdated: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated'],
      )!,
    );
  }

  @override
  $ExchangeRatesTable createAlias(String alias) {
    return $ExchangeRatesTable(attachedDatabase, alias);
  }
}

class ExchangeRate extends DataClass implements Insertable<ExchangeRate> {
  final int id;
  final double official;
  final double blue;
  final double mep;
  final String selectedType;
  final double? manualRate;
  final bool isManual;
  final DateTime lastUpdated;
  const ExchangeRate({
    required this.id,
    required this.official,
    required this.blue,
    required this.mep,
    required this.selectedType,
    this.manualRate,
    required this.isManual,
    required this.lastUpdated,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['official'] = Variable<double>(official);
    map['blue'] = Variable<double>(blue);
    map['mep'] = Variable<double>(mep);
    map['selected_type'] = Variable<String>(selectedType);
    if (!nullToAbsent || manualRate != null) {
      map['manual_rate'] = Variable<double>(manualRate);
    }
    map['is_manual'] = Variable<bool>(isManual);
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    return map;
  }

  ExchangeRatesCompanion toCompanion(bool nullToAbsent) {
    return ExchangeRatesCompanion(
      id: Value(id),
      official: Value(official),
      blue: Value(blue),
      mep: Value(mep),
      selectedType: Value(selectedType),
      manualRate: manualRate == null && nullToAbsent
          ? const Value.absent()
          : Value(manualRate),
      isManual: Value(isManual),
      lastUpdated: Value(lastUpdated),
    );
  }

  factory ExchangeRate.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExchangeRate(
      id: serializer.fromJson<int>(json['id']),
      official: serializer.fromJson<double>(json['official']),
      blue: serializer.fromJson<double>(json['blue']),
      mep: serializer.fromJson<double>(json['mep']),
      selectedType: serializer.fromJson<String>(json['selectedType']),
      manualRate: serializer.fromJson<double?>(json['manualRate']),
      isManual: serializer.fromJson<bool>(json['isManual']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'official': serializer.toJson<double>(official),
      'blue': serializer.toJson<double>(blue),
      'mep': serializer.toJson<double>(mep),
      'selectedType': serializer.toJson<String>(selectedType),
      'manualRate': serializer.toJson<double?>(manualRate),
      'isManual': serializer.toJson<bool>(isManual),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
    };
  }

  ExchangeRate copyWith({
    int? id,
    double? official,
    double? blue,
    double? mep,
    String? selectedType,
    Value<double?> manualRate = const Value.absent(),
    bool? isManual,
    DateTime? lastUpdated,
  }) => ExchangeRate(
    id: id ?? this.id,
    official: official ?? this.official,
    blue: blue ?? this.blue,
    mep: mep ?? this.mep,
    selectedType: selectedType ?? this.selectedType,
    manualRate: manualRate.present ? manualRate.value : this.manualRate,
    isManual: isManual ?? this.isManual,
    lastUpdated: lastUpdated ?? this.lastUpdated,
  );
  ExchangeRate copyWithCompanion(ExchangeRatesCompanion data) {
    return ExchangeRate(
      id: data.id.present ? data.id.value : this.id,
      official: data.official.present ? data.official.value : this.official,
      blue: data.blue.present ? data.blue.value : this.blue,
      mep: data.mep.present ? data.mep.value : this.mep,
      selectedType: data.selectedType.present
          ? data.selectedType.value
          : this.selectedType,
      manualRate: data.manualRate.present
          ? data.manualRate.value
          : this.manualRate,
      isManual: data.isManual.present ? data.isManual.value : this.isManual,
      lastUpdated: data.lastUpdated.present
          ? data.lastUpdated.value
          : this.lastUpdated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExchangeRate(')
          ..write('id: $id, ')
          ..write('official: $official, ')
          ..write('blue: $blue, ')
          ..write('mep: $mep, ')
          ..write('selectedType: $selectedType, ')
          ..write('manualRate: $manualRate, ')
          ..write('isManual: $isManual, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    official,
    blue,
    mep,
    selectedType,
    manualRate,
    isManual,
    lastUpdated,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExchangeRate &&
          other.id == this.id &&
          other.official == this.official &&
          other.blue == this.blue &&
          other.mep == this.mep &&
          other.selectedType == this.selectedType &&
          other.manualRate == this.manualRate &&
          other.isManual == this.isManual &&
          other.lastUpdated == this.lastUpdated);
}

class ExchangeRatesCompanion extends UpdateCompanion<ExchangeRate> {
  final Value<int> id;
  final Value<double> official;
  final Value<double> blue;
  final Value<double> mep;
  final Value<String> selectedType;
  final Value<double?> manualRate;
  final Value<bool> isManual;
  final Value<DateTime> lastUpdated;
  const ExchangeRatesCompanion({
    this.id = const Value.absent(),
    this.official = const Value.absent(),
    this.blue = const Value.absent(),
    this.mep = const Value.absent(),
    this.selectedType = const Value.absent(),
    this.manualRate = const Value.absent(),
    this.isManual = const Value.absent(),
    this.lastUpdated = const Value.absent(),
  });
  ExchangeRatesCompanion.insert({
    this.id = const Value.absent(),
    required double official,
    required double blue,
    required double mep,
    this.selectedType = const Value.absent(),
    this.manualRate = const Value.absent(),
    this.isManual = const Value.absent(),
    required DateTime lastUpdated,
  }) : official = Value(official),
       blue = Value(blue),
       mep = Value(mep),
       lastUpdated = Value(lastUpdated);
  static Insertable<ExchangeRate> custom({
    Expression<int>? id,
    Expression<double>? official,
    Expression<double>? blue,
    Expression<double>? mep,
    Expression<String>? selectedType,
    Expression<double>? manualRate,
    Expression<bool>? isManual,
    Expression<DateTime>? lastUpdated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (official != null) 'official': official,
      if (blue != null) 'blue': blue,
      if (mep != null) 'mep': mep,
      if (selectedType != null) 'selected_type': selectedType,
      if (manualRate != null) 'manual_rate': manualRate,
      if (isManual != null) 'is_manual': isManual,
      if (lastUpdated != null) 'last_updated': lastUpdated,
    });
  }

  ExchangeRatesCompanion copyWith({
    Value<int>? id,
    Value<double>? official,
    Value<double>? blue,
    Value<double>? mep,
    Value<String>? selectedType,
    Value<double?>? manualRate,
    Value<bool>? isManual,
    Value<DateTime>? lastUpdated,
  }) {
    return ExchangeRatesCompanion(
      id: id ?? this.id,
      official: official ?? this.official,
      blue: blue ?? this.blue,
      mep: mep ?? this.mep,
      selectedType: selectedType ?? this.selectedType,
      manualRate: manualRate ?? this.manualRate,
      isManual: isManual ?? this.isManual,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (official.present) {
      map['official'] = Variable<double>(official.value);
    }
    if (blue.present) {
      map['blue'] = Variable<double>(blue.value);
    }
    if (mep.present) {
      map['mep'] = Variable<double>(mep.value);
    }
    if (selectedType.present) {
      map['selected_type'] = Variable<String>(selectedType.value);
    }
    if (manualRate.present) {
      map['manual_rate'] = Variable<double>(manualRate.value);
    }
    if (isManual.present) {
      map['is_manual'] = Variable<bool>(isManual.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExchangeRatesCompanion(')
          ..write('id: $id, ')
          ..write('official: $official, ')
          ..write('blue: $blue, ')
          ..write('mep: $mep, ')
          ..write('selectedType: $selectedType, ')
          ..write('manualRate: $manualRate, ')
          ..write('isManual: $isManual, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $WalletsTable wallets = $WalletsTable(this);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final $GoalsTable goals = $GoalsTable(this);
  late final $GoalContributionsTable goalContributions =
      $GoalContributionsTable(this);
  late final $BudgetsTable budgets = $BudgetsTable(this);
  late final $SharedExpensesTable sharedExpenses = $SharedExpensesTable(this);
  late final $SplitItemsTable splitItems = $SplitItemsTable(this);
  late final $FamilyGroupsTable familyGroups = $FamilyGroupsTable(this);
  late final $ExchangeRatesTable exchangeRates = $ExchangeRatesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    wallets,
    transactions,
    goals,
    goalContributions,
    budgets,
    sharedExpenses,
    splitItems,
    familyGroups,
    exchangeRates,
  ];
}

typedef $$WalletsTableCreateCompanionBuilder =
    WalletsCompanion Function({
      required String uid,
      required String userId,
      required String name,
      required String type,
      required String currency,
      Value<double> balance,
      Value<String> icon,
      required int colorValue,
      Value<String?> bankName,
      Value<bool> isVisible,
      Value<bool> isArchived,
      required DateTime createdAt,
      Value<DateTime?> updatedAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });
typedef $$WalletsTableUpdateCompanionBuilder =
    WalletsCompanion Function({
      Value<String> uid,
      Value<String> userId,
      Value<String> name,
      Value<String> type,
      Value<String> currency,
      Value<double> balance,
      Value<String> icon,
      Value<int> colorValue,
      Value<String?> bankName,
      Value<bool> isVisible,
      Value<bool> isArchived,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });

class $$WalletsTableFilterComposer
    extends Composer<_$AppDatabase, $WalletsTable> {
  $$WalletsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get colorValue => $composableBuilder(
    column: $table.colorValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bankName => $composableBuilder(
    column: $table.bankName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isVisible => $composableBuilder(
    column: $table.isVisible,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WalletsTableOrderingComposer
    extends Composer<_$AppDatabase, $WalletsTable> {
  $$WalletsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get colorValue => $composableBuilder(
    column: $table.colorValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bankName => $composableBuilder(
    column: $table.bankName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isVisible => $composableBuilder(
    column: $table.isVisible,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WalletsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WalletsTable> {
  $$WalletsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<int> get colorValue => $composableBuilder(
    column: $table.colorValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bankName =>
      $composableBuilder(column: $table.bankName, builder: (column) => column);

  GeneratedColumn<bool> get isVisible =>
      $composableBuilder(column: $table.isVisible, builder: (column) => column);

  GeneratedColumn<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => column,
  );
}

class $$WalletsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WalletsTable,
          Wallet,
          $$WalletsTableFilterComposer,
          $$WalletsTableOrderingComposer,
          $$WalletsTableAnnotationComposer,
          $$WalletsTableCreateCompanionBuilder,
          $$WalletsTableUpdateCompanionBuilder,
          (Wallet, BaseReferences<_$AppDatabase, $WalletsTable, Wallet>),
          Wallet,
          PrefetchHooks Function()
        > {
  $$WalletsTableTableManager(_$AppDatabase db, $WalletsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WalletsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WalletsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WalletsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uid = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<double> balance = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<int> colorValue = const Value.absent(),
                Value<String?> bankName = const Value.absent(),
                Value<bool> isVisible = const Value.absent(),
                Value<bool> isArchived = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WalletsCompanion(
                uid: uid,
                userId: userId,
                name: name,
                type: type,
                currency: currency,
                balance: balance,
                icon: icon,
                colorValue: colorValue,
                bankName: bankName,
                isVisible: isVisible,
                isArchived: isArchived,
                createdAt: createdAt,
                updatedAt: updatedAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uid,
                required String userId,
                required String name,
                required String type,
                required String currency,
                Value<double> balance = const Value.absent(),
                Value<String> icon = const Value.absent(),
                required int colorValue,
                Value<String?> bankName = const Value.absent(),
                Value<bool> isVisible = const Value.absent(),
                Value<bool> isArchived = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WalletsCompanion.insert(
                uid: uid,
                userId: userId,
                name: name,
                type: type,
                currency: currency,
                balance: balance,
                icon: icon,
                colorValue: colorValue,
                bankName: bankName,
                isVisible: isVisible,
                isArchived: isArchived,
                createdAt: createdAt,
                updatedAt: updatedAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WalletsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WalletsTable,
      Wallet,
      $$WalletsTableFilterComposer,
      $$WalletsTableOrderingComposer,
      $$WalletsTableAnnotationComposer,
      $$WalletsTableCreateCompanionBuilder,
      $$WalletsTableUpdateCompanionBuilder,
      (Wallet, BaseReferences<_$AppDatabase, $WalletsTable, Wallet>),
      Wallet,
      PrefetchHooks Function()
    >;
typedef $$TransactionsTableCreateCompanionBuilder =
    TransactionsCompanion Function({
      required String uid,
      required String userId,
      required String walletId,
      required String type,
      required String currency,
      required String category,
      required double amount,
      Value<String?> note,
      Value<String?> subcategory,
      required DateTime date,
      Value<bool> isSharedExpense,
      Value<String?> sharedExpenseId,
      Value<String?> targetWalletId,
      required DateTime createdAt,
      Value<DateTime?> updatedAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });
typedef $$TransactionsTableUpdateCompanionBuilder =
    TransactionsCompanion Function({
      Value<String> uid,
      Value<String> userId,
      Value<String> walletId,
      Value<String> type,
      Value<String> currency,
      Value<String> category,
      Value<double> amount,
      Value<String?> note,
      Value<String?> subcategory,
      Value<DateTime> date,
      Value<bool> isSharedExpense,
      Value<String?> sharedExpenseId,
      Value<String?> targetWalletId,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });

class $$TransactionsTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionsTable> {
  $$TransactionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get walletId => $composableBuilder(
    column: $table.walletId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subcategory => $composableBuilder(
    column: $table.subcategory,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSharedExpense => $composableBuilder(
    column: $table.isSharedExpense,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sharedExpenseId => $composableBuilder(
    column: $table.sharedExpenseId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get targetWalletId => $composableBuilder(
    column: $table.targetWalletId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TransactionsTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionsTable> {
  $$TransactionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get walletId => $composableBuilder(
    column: $table.walletId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subcategory => $composableBuilder(
    column: $table.subcategory,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSharedExpense => $composableBuilder(
    column: $table.isSharedExpense,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sharedExpenseId => $composableBuilder(
    column: $table.sharedExpenseId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get targetWalletId => $composableBuilder(
    column: $table.targetWalletId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TransactionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionsTable> {
  $$TransactionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get walletId =>
      $composableBuilder(column: $table.walletId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get subcategory => $composableBuilder(
    column: $table.subcategory,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<bool> get isSharedExpense => $composableBuilder(
    column: $table.isSharedExpense,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sharedExpenseId => $composableBuilder(
    column: $table.sharedExpenseId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get targetWalletId => $composableBuilder(
    column: $table.targetWalletId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => column,
  );
}

class $$TransactionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TransactionsTable,
          Transaction,
          $$TransactionsTableFilterComposer,
          $$TransactionsTableOrderingComposer,
          $$TransactionsTableAnnotationComposer,
          $$TransactionsTableCreateCompanionBuilder,
          $$TransactionsTableUpdateCompanionBuilder,
          (
            Transaction,
            BaseReferences<_$AppDatabase, $TransactionsTable, Transaction>,
          ),
          Transaction,
          PrefetchHooks Function()
        > {
  $$TransactionsTableTableManager(_$AppDatabase db, $TransactionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uid = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> walletId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String?> subcategory = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<bool> isSharedExpense = const Value.absent(),
                Value<String?> sharedExpenseId = const Value.absent(),
                Value<String?> targetWalletId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionsCompanion(
                uid: uid,
                userId: userId,
                walletId: walletId,
                type: type,
                currency: currency,
                category: category,
                amount: amount,
                note: note,
                subcategory: subcategory,
                date: date,
                isSharedExpense: isSharedExpense,
                sharedExpenseId: sharedExpenseId,
                targetWalletId: targetWalletId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uid,
                required String userId,
                required String walletId,
                required String type,
                required String currency,
                required String category,
                required double amount,
                Value<String?> note = const Value.absent(),
                Value<String?> subcategory = const Value.absent(),
                required DateTime date,
                Value<bool> isSharedExpense = const Value.absent(),
                Value<String?> sharedExpenseId = const Value.absent(),
                Value<String?> targetWalletId = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionsCompanion.insert(
                uid: uid,
                userId: userId,
                walletId: walletId,
                type: type,
                currency: currency,
                category: category,
                amount: amount,
                note: note,
                subcategory: subcategory,
                date: date,
                isSharedExpense: isSharedExpense,
                sharedExpenseId: sharedExpenseId,
                targetWalletId: targetWalletId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TransactionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TransactionsTable,
      Transaction,
      $$TransactionsTableFilterComposer,
      $$TransactionsTableOrderingComposer,
      $$TransactionsTableAnnotationComposer,
      $$TransactionsTableCreateCompanionBuilder,
      $$TransactionsTableUpdateCompanionBuilder,
      (
        Transaction,
        BaseReferences<_$AppDatabase, $TransactionsTable, Transaction>,
      ),
      Transaction,
      PrefetchHooks Function()
    >;
typedef $$GoalsTableCreateCompanionBuilder =
    GoalsCompanion Function({
      required String uid,
      required String userId,
      required String title,
      Value<String?> description,
      required double targetAmount,
      Value<double> currentAmount,
      required String currency,
      Value<DateTime?> deadline,
      Value<String> icon,
      required int colorValue,
      Value<bool> isShared,
      Value<String?> familyGroupId,
      Value<String> status,
      required DateTime createdAt,
      Value<DateTime?> updatedAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });
typedef $$GoalsTableUpdateCompanionBuilder =
    GoalsCompanion Function({
      Value<String> uid,
      Value<String> userId,
      Value<String> title,
      Value<String?> description,
      Value<double> targetAmount,
      Value<double> currentAmount,
      Value<String> currency,
      Value<DateTime?> deadline,
      Value<String> icon,
      Value<int> colorValue,
      Value<bool> isShared,
      Value<String?> familyGroupId,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });

class $$GoalsTableFilterComposer extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetAmount => $composableBuilder(
    column: $table.targetAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get currentAmount => $composableBuilder(
    column: $table.currentAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get deadline => $composableBuilder(
    column: $table.deadline,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get colorValue => $composableBuilder(
    column: $table.colorValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isShared => $composableBuilder(
    column: $table.isShared,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get familyGroupId => $composableBuilder(
    column: $table.familyGroupId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GoalsTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetAmount => $composableBuilder(
    column: $table.targetAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get currentAmount => $composableBuilder(
    column: $table.currentAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get deadline => $composableBuilder(
    column: $table.deadline,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get colorValue => $composableBuilder(
    column: $table.colorValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isShared => $composableBuilder(
    column: $table.isShared,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get familyGroupId => $composableBuilder(
    column: $table.familyGroupId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GoalsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalsTable> {
  $$GoalsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get targetAmount => $composableBuilder(
    column: $table.targetAmount,
    builder: (column) => column,
  );

  GeneratedColumn<double> get currentAmount => $composableBuilder(
    column: $table.currentAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<DateTime> get deadline =>
      $composableBuilder(column: $table.deadline, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<int> get colorValue => $composableBuilder(
    column: $table.colorValue,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isShared =>
      $composableBuilder(column: $table.isShared, builder: (column) => column);

  GeneratedColumn<String> get familyGroupId => $composableBuilder(
    column: $table.familyGroupId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => column,
  );
}

class $$GoalsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalsTable,
          Goal,
          $$GoalsTableFilterComposer,
          $$GoalsTableOrderingComposer,
          $$GoalsTableAnnotationComposer,
          $$GoalsTableCreateCompanionBuilder,
          $$GoalsTableUpdateCompanionBuilder,
          (Goal, BaseReferences<_$AppDatabase, $GoalsTable, Goal>),
          Goal,
          PrefetchHooks Function()
        > {
  $$GoalsTableTableManager(_$AppDatabase db, $GoalsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uid = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<double> targetAmount = const Value.absent(),
                Value<double> currentAmount = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<DateTime?> deadline = const Value.absent(),
                Value<String> icon = const Value.absent(),
                Value<int> colorValue = const Value.absent(),
                Value<bool> isShared = const Value.absent(),
                Value<String?> familyGroupId = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalsCompanion(
                uid: uid,
                userId: userId,
                title: title,
                description: description,
                targetAmount: targetAmount,
                currentAmount: currentAmount,
                currency: currency,
                deadline: deadline,
                icon: icon,
                colorValue: colorValue,
                isShared: isShared,
                familyGroupId: familyGroupId,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uid,
                required String userId,
                required String title,
                Value<String?> description = const Value.absent(),
                required double targetAmount,
                Value<double> currentAmount = const Value.absent(),
                required String currency,
                Value<DateTime?> deadline = const Value.absent(),
                Value<String> icon = const Value.absent(),
                required int colorValue,
                Value<bool> isShared = const Value.absent(),
                Value<String?> familyGroupId = const Value.absent(),
                Value<String> status = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GoalsCompanion.insert(
                uid: uid,
                userId: userId,
                title: title,
                description: description,
                targetAmount: targetAmount,
                currentAmount: currentAmount,
                currency: currency,
                deadline: deadline,
                icon: icon,
                colorValue: colorValue,
                isShared: isShared,
                familyGroupId: familyGroupId,
                status: status,
                createdAt: createdAt,
                updatedAt: updatedAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GoalsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalsTable,
      Goal,
      $$GoalsTableFilterComposer,
      $$GoalsTableOrderingComposer,
      $$GoalsTableAnnotationComposer,
      $$GoalsTableCreateCompanionBuilder,
      $$GoalsTableUpdateCompanionBuilder,
      (Goal, BaseReferences<_$AppDatabase, $GoalsTable, Goal>),
      Goal,
      PrefetchHooks Function()
    >;
typedef $$GoalContributionsTableCreateCompanionBuilder =
    GoalContributionsCompanion Function({
      Value<int> id,
      required String goalId,
      required String userId,
      required double amount,
      required DateTime date,
      Value<String?> note,
    });
typedef $$GoalContributionsTableUpdateCompanionBuilder =
    GoalContributionsCompanion Function({
      Value<int> id,
      Value<String> goalId,
      Value<String> userId,
      Value<double> amount,
      Value<DateTime> date,
      Value<String?> note,
    });

class $$GoalContributionsTableFilterComposer
    extends Composer<_$AppDatabase, $GoalContributionsTable> {
  $$GoalContributionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get goalId => $composableBuilder(
    column: $table.goalId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GoalContributionsTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalContributionsTable> {
  $$GoalContributionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get goalId => $composableBuilder(
    column: $table.goalId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GoalContributionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalContributionsTable> {
  $$GoalContributionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get goalId =>
      $composableBuilder(column: $table.goalId, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);
}

class $$GoalContributionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalContributionsTable,
          GoalContribution,
          $$GoalContributionsTableFilterComposer,
          $$GoalContributionsTableOrderingComposer,
          $$GoalContributionsTableAnnotationComposer,
          $$GoalContributionsTableCreateCompanionBuilder,
          $$GoalContributionsTableUpdateCompanionBuilder,
          (
            GoalContribution,
            BaseReferences<
              _$AppDatabase,
              $GoalContributionsTable,
              GoalContribution
            >,
          ),
          GoalContribution,
          PrefetchHooks Function()
        > {
  $$GoalContributionsTableTableManager(
    _$AppDatabase db,
    $GoalContributionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalContributionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalContributionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalContributionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> goalId = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String?> note = const Value.absent(),
              }) => GoalContributionsCompanion(
                id: id,
                goalId: goalId,
                userId: userId,
                amount: amount,
                date: date,
                note: note,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String goalId,
                required String userId,
                required double amount,
                required DateTime date,
                Value<String?> note = const Value.absent(),
              }) => GoalContributionsCompanion.insert(
                id: id,
                goalId: goalId,
                userId: userId,
                amount: amount,
                date: date,
                note: note,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GoalContributionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalContributionsTable,
      GoalContribution,
      $$GoalContributionsTableFilterComposer,
      $$GoalContributionsTableOrderingComposer,
      $$GoalContributionsTableAnnotationComposer,
      $$GoalContributionsTableCreateCompanionBuilder,
      $$GoalContributionsTableUpdateCompanionBuilder,
      (
        GoalContribution,
        BaseReferences<
          _$AppDatabase,
          $GoalContributionsTable,
          GoalContribution
        >,
      ),
      GoalContribution,
      PrefetchHooks Function()
    >;
typedef $$BudgetsTableCreateCompanionBuilder =
    BudgetsCompanion Function({
      required String uid,
      required String userId,
      required String category,
      required double limitAmount,
      required String currency,
      required int month,
      required int year,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$BudgetsTableUpdateCompanionBuilder =
    BudgetsCompanion Function({
      Value<String> uid,
      Value<String> userId,
      Value<String> category,
      Value<double> limitAmount,
      Value<String> currency,
      Value<int> month,
      Value<int> year,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$BudgetsTableFilterComposer
    extends Composer<_$AppDatabase, $BudgetsTable> {
  $$BudgetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get limitAmount => $composableBuilder(
    column: $table.limitAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BudgetsTableOrderingComposer
    extends Composer<_$AppDatabase, $BudgetsTable> {
  $$BudgetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get limitAmount => $composableBuilder(
    column: $table.limitAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BudgetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BudgetsTable> {
  $$BudgetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<double> get limitAmount => $composableBuilder(
    column: $table.limitAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<int> get month =>
      $composableBuilder(column: $table.month, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$BudgetsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BudgetsTable,
          Budget,
          $$BudgetsTableFilterComposer,
          $$BudgetsTableOrderingComposer,
          $$BudgetsTableAnnotationComposer,
          $$BudgetsTableCreateCompanionBuilder,
          $$BudgetsTableUpdateCompanionBuilder,
          (Budget, BaseReferences<_$AppDatabase, $BudgetsTable, Budget>),
          Budget,
          PrefetchHooks Function()
        > {
  $$BudgetsTableTableManager(_$AppDatabase db, $BudgetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BudgetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BudgetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BudgetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uid = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<double> limitAmount = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<int> month = const Value.absent(),
                Value<int> year = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BudgetsCompanion(
                uid: uid,
                userId: userId,
                category: category,
                limitAmount: limitAmount,
                currency: currency,
                month: month,
                year: year,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uid,
                required String userId,
                required String category,
                required double limitAmount,
                required String currency,
                required int month,
                required int year,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => BudgetsCompanion.insert(
                uid: uid,
                userId: userId,
                category: category,
                limitAmount: limitAmount,
                currency: currency,
                month: month,
                year: year,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BudgetsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BudgetsTable,
      Budget,
      $$BudgetsTableFilterComposer,
      $$BudgetsTableOrderingComposer,
      $$BudgetsTableAnnotationComposer,
      $$BudgetsTableCreateCompanionBuilder,
      $$BudgetsTableUpdateCompanionBuilder,
      (Budget, BaseReferences<_$AppDatabase, $BudgetsTable, Budget>),
      Budget,
      PrefetchHooks Function()
    >;
typedef $$SharedExpensesTableCreateCompanionBuilder =
    SharedExpensesCompanion Function({
      required String uid,
      required String familyGroupId,
      required String payerUserId,
      required String title,
      required double totalAmount,
      required String currency,
      required String category,
      required String splitMode,
      required DateTime date,
      Value<String?> note,
      Value<String> status,
      required DateTime createdAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });
typedef $$SharedExpensesTableUpdateCompanionBuilder =
    SharedExpensesCompanion Function({
      Value<String> uid,
      Value<String> familyGroupId,
      Value<String> payerUserId,
      Value<String> title,
      Value<double> totalAmount,
      Value<String> currency,
      Value<String> category,
      Value<String> splitMode,
      Value<DateTime> date,
      Value<String?> note,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });

class $$SharedExpensesTableFilterComposer
    extends Composer<_$AppDatabase, $SharedExpensesTable> {
  $$SharedExpensesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get familyGroupId => $composableBuilder(
    column: $table.familyGroupId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payerUserId => $composableBuilder(
    column: $table.payerUserId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalAmount => $composableBuilder(
    column: $table.totalAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get splitMode => $composableBuilder(
    column: $table.splitMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SharedExpensesTableOrderingComposer
    extends Composer<_$AppDatabase, $SharedExpensesTable> {
  $$SharedExpensesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get familyGroupId => $composableBuilder(
    column: $table.familyGroupId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payerUserId => $composableBuilder(
    column: $table.payerUserId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalAmount => $composableBuilder(
    column: $table.totalAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get splitMode => $composableBuilder(
    column: $table.splitMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SharedExpensesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SharedExpensesTable> {
  $$SharedExpensesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get familyGroupId => $composableBuilder(
    column: $table.familyGroupId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get payerUserId => $composableBuilder(
    column: $table.payerUserId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get totalAmount => $composableBuilder(
    column: $table.totalAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get splitMode =>
      $composableBuilder(column: $table.splitMode, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => column,
  );
}

class $$SharedExpensesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SharedExpensesTable,
          SharedExpense,
          $$SharedExpensesTableFilterComposer,
          $$SharedExpensesTableOrderingComposer,
          $$SharedExpensesTableAnnotationComposer,
          $$SharedExpensesTableCreateCompanionBuilder,
          $$SharedExpensesTableUpdateCompanionBuilder,
          (
            SharedExpense,
            BaseReferences<_$AppDatabase, $SharedExpensesTable, SharedExpense>,
          ),
          SharedExpense,
          PrefetchHooks Function()
        > {
  $$SharedExpensesTableTableManager(
    _$AppDatabase db,
    $SharedExpensesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SharedExpensesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SharedExpensesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SharedExpensesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uid = const Value.absent(),
                Value<String> familyGroupId = const Value.absent(),
                Value<String> payerUserId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<double> totalAmount = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> splitMode = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SharedExpensesCompanion(
                uid: uid,
                familyGroupId: familyGroupId,
                payerUserId: payerUserId,
                title: title,
                totalAmount: totalAmount,
                currency: currency,
                category: category,
                splitMode: splitMode,
                date: date,
                note: note,
                status: status,
                createdAt: createdAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uid,
                required String familyGroupId,
                required String payerUserId,
                required String title,
                required double totalAmount,
                required String currency,
                required String category,
                required String splitMode,
                required DateTime date,
                Value<String?> note = const Value.absent(),
                Value<String> status = const Value.absent(),
                required DateTime createdAt,
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SharedExpensesCompanion.insert(
                uid: uid,
                familyGroupId: familyGroupId,
                payerUserId: payerUserId,
                title: title,
                totalAmount: totalAmount,
                currency: currency,
                category: category,
                splitMode: splitMode,
                date: date,
                note: note,
                status: status,
                createdAt: createdAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SharedExpensesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SharedExpensesTable,
      SharedExpense,
      $$SharedExpensesTableFilterComposer,
      $$SharedExpensesTableOrderingComposer,
      $$SharedExpensesTableAnnotationComposer,
      $$SharedExpensesTableCreateCompanionBuilder,
      $$SharedExpensesTableUpdateCompanionBuilder,
      (
        SharedExpense,
        BaseReferences<_$AppDatabase, $SharedExpensesTable, SharedExpense>,
      ),
      SharedExpense,
      PrefetchHooks Function()
    >;
typedef $$SplitItemsTableCreateCompanionBuilder =
    SplitItemsCompanion Function({
      Value<int> id,
      required String sharedExpenseId,
      required String userId,
      required String displayName,
      required double amount,
      Value<double> percentage,
      Value<bool> isPaid,
      Value<DateTime?> paidAt,
    });
typedef $$SplitItemsTableUpdateCompanionBuilder =
    SplitItemsCompanion Function({
      Value<int> id,
      Value<String> sharedExpenseId,
      Value<String> userId,
      Value<String> displayName,
      Value<double> amount,
      Value<double> percentage,
      Value<bool> isPaid,
      Value<DateTime?> paidAt,
    });

class $$SplitItemsTableFilterComposer
    extends Composer<_$AppDatabase, $SplitItemsTable> {
  $$SplitItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sharedExpenseId => $composableBuilder(
    column: $table.sharedExpenseId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get percentage => $composableBuilder(
    column: $table.percentage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPaid => $composableBuilder(
    column: $table.isPaid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get paidAt => $composableBuilder(
    column: $table.paidAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SplitItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $SplitItemsTable> {
  $$SplitItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sharedExpenseId => $composableBuilder(
    column: $table.sharedExpenseId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get percentage => $composableBuilder(
    column: $table.percentage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPaid => $composableBuilder(
    column: $table.isPaid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get paidAt => $composableBuilder(
    column: $table.paidAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SplitItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SplitItemsTable> {
  $$SplitItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sharedExpenseId => $composableBuilder(
    column: $table.sharedExpenseId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<double> get percentage => $composableBuilder(
    column: $table.percentage,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isPaid =>
      $composableBuilder(column: $table.isPaid, builder: (column) => column);

  GeneratedColumn<DateTime> get paidAt =>
      $composableBuilder(column: $table.paidAt, builder: (column) => column);
}

class $$SplitItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SplitItemsTable,
          SplitItem,
          $$SplitItemsTableFilterComposer,
          $$SplitItemsTableOrderingComposer,
          $$SplitItemsTableAnnotationComposer,
          $$SplitItemsTableCreateCompanionBuilder,
          $$SplitItemsTableUpdateCompanionBuilder,
          (
            SplitItem,
            BaseReferences<_$AppDatabase, $SplitItemsTable, SplitItem>,
          ),
          SplitItem,
          PrefetchHooks Function()
        > {
  $$SplitItemsTableTableManager(_$AppDatabase db, $SplitItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SplitItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SplitItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SplitItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> sharedExpenseId = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> displayName = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<double> percentage = const Value.absent(),
                Value<bool> isPaid = const Value.absent(),
                Value<DateTime?> paidAt = const Value.absent(),
              }) => SplitItemsCompanion(
                id: id,
                sharedExpenseId: sharedExpenseId,
                userId: userId,
                displayName: displayName,
                amount: amount,
                percentage: percentage,
                isPaid: isPaid,
                paidAt: paidAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String sharedExpenseId,
                required String userId,
                required String displayName,
                required double amount,
                Value<double> percentage = const Value.absent(),
                Value<bool> isPaid = const Value.absent(),
                Value<DateTime?> paidAt = const Value.absent(),
              }) => SplitItemsCompanion.insert(
                id: id,
                sharedExpenseId: sharedExpenseId,
                userId: userId,
                displayName: displayName,
                amount: amount,
                percentage: percentage,
                isPaid: isPaid,
                paidAt: paidAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SplitItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SplitItemsTable,
      SplitItem,
      $$SplitItemsTableFilterComposer,
      $$SplitItemsTableOrderingComposer,
      $$SplitItemsTableAnnotationComposer,
      $$SplitItemsTableCreateCompanionBuilder,
      $$SplitItemsTableUpdateCompanionBuilder,
      (SplitItem, BaseReferences<_$AppDatabase, $SplitItemsTable, SplitItem>),
      SplitItem,
      PrefetchHooks Function()
    >;
typedef $$FamilyGroupsTableCreateCompanionBuilder =
    FamilyGroupsCompanion Function({
      required String uid,
      required String name,
      required String createdByUserId,
      required String memberIdsJson,
      required String memberNamesJson,
      required String inviteCode,
      required DateTime createdAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });
typedef $$FamilyGroupsTableUpdateCompanionBuilder =
    FamilyGroupsCompanion Function({
      Value<String> uid,
      Value<String> name,
      Value<String> createdByUserId,
      Value<String> memberIdsJson,
      Value<String> memberNamesJson,
      Value<String> inviteCode,
      Value<DateTime> createdAt,
      Value<String?> firestoreId,
      Value<int> rowid,
    });

class $$FamilyGroupsTableFilterComposer
    extends Composer<_$AppDatabase, $FamilyGroupsTable> {
  $$FamilyGroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdByUserId => $composableBuilder(
    column: $table.createdByUserId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get memberIdsJson => $composableBuilder(
    column: $table.memberIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get memberNamesJson => $composableBuilder(
    column: $table.memberNamesJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get inviteCode => $composableBuilder(
    column: $table.inviteCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FamilyGroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $FamilyGroupsTable> {
  $$FamilyGroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdByUserId => $composableBuilder(
    column: $table.createdByUserId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get memberIdsJson => $composableBuilder(
    column: $table.memberIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get memberNamesJson => $composableBuilder(
    column: $table.memberNamesJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get inviteCode => $composableBuilder(
    column: $table.inviteCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FamilyGroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FamilyGroupsTable> {
  $$FamilyGroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get createdByUserId => $composableBuilder(
    column: $table.createdByUserId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get memberIdsJson => $composableBuilder(
    column: $table.memberIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get memberNamesJson => $composableBuilder(
    column: $table.memberNamesJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get inviteCode => $composableBuilder(
    column: $table.inviteCode,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get firestoreId => $composableBuilder(
    column: $table.firestoreId,
    builder: (column) => column,
  );
}

class $$FamilyGroupsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FamilyGroupsTable,
          FamilyGroup,
          $$FamilyGroupsTableFilterComposer,
          $$FamilyGroupsTableOrderingComposer,
          $$FamilyGroupsTableAnnotationComposer,
          $$FamilyGroupsTableCreateCompanionBuilder,
          $$FamilyGroupsTableUpdateCompanionBuilder,
          (
            FamilyGroup,
            BaseReferences<_$AppDatabase, $FamilyGroupsTable, FamilyGroup>,
          ),
          FamilyGroup,
          PrefetchHooks Function()
        > {
  $$FamilyGroupsTableTableManager(_$AppDatabase db, $FamilyGroupsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FamilyGroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FamilyGroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FamilyGroupsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> uid = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> createdByUserId = const Value.absent(),
                Value<String> memberIdsJson = const Value.absent(),
                Value<String> memberNamesJson = const Value.absent(),
                Value<String> inviteCode = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FamilyGroupsCompanion(
                uid: uid,
                name: name,
                createdByUserId: createdByUserId,
                memberIdsJson: memberIdsJson,
                memberNamesJson: memberNamesJson,
                inviteCode: inviteCode,
                createdAt: createdAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String uid,
                required String name,
                required String createdByUserId,
                required String memberIdsJson,
                required String memberNamesJson,
                required String inviteCode,
                required DateTime createdAt,
                Value<String?> firestoreId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FamilyGroupsCompanion.insert(
                uid: uid,
                name: name,
                createdByUserId: createdByUserId,
                memberIdsJson: memberIdsJson,
                memberNamesJson: memberNamesJson,
                inviteCode: inviteCode,
                createdAt: createdAt,
                firestoreId: firestoreId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FamilyGroupsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FamilyGroupsTable,
      FamilyGroup,
      $$FamilyGroupsTableFilterComposer,
      $$FamilyGroupsTableOrderingComposer,
      $$FamilyGroupsTableAnnotationComposer,
      $$FamilyGroupsTableCreateCompanionBuilder,
      $$FamilyGroupsTableUpdateCompanionBuilder,
      (
        FamilyGroup,
        BaseReferences<_$AppDatabase, $FamilyGroupsTable, FamilyGroup>,
      ),
      FamilyGroup,
      PrefetchHooks Function()
    >;
typedef $$ExchangeRatesTableCreateCompanionBuilder =
    ExchangeRatesCompanion Function({
      Value<int> id,
      required double official,
      required double blue,
      required double mep,
      Value<String> selectedType,
      Value<double?> manualRate,
      Value<bool> isManual,
      required DateTime lastUpdated,
    });
typedef $$ExchangeRatesTableUpdateCompanionBuilder =
    ExchangeRatesCompanion Function({
      Value<int> id,
      Value<double> official,
      Value<double> blue,
      Value<double> mep,
      Value<String> selectedType,
      Value<double?> manualRate,
      Value<bool> isManual,
      Value<DateTime> lastUpdated,
    });

class $$ExchangeRatesTableFilterComposer
    extends Composer<_$AppDatabase, $ExchangeRatesTable> {
  $$ExchangeRatesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get official => $composableBuilder(
    column: $table.official,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get blue => $composableBuilder(
    column: $table.blue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get mep => $composableBuilder(
    column: $table.mep,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get selectedType => $composableBuilder(
    column: $table.selectedType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get manualRate => $composableBuilder(
    column: $table.manualRate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isManual => $composableBuilder(
    column: $table.isManual,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExchangeRatesTableOrderingComposer
    extends Composer<_$AppDatabase, $ExchangeRatesTable> {
  $$ExchangeRatesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get official => $composableBuilder(
    column: $table.official,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get blue => $composableBuilder(
    column: $table.blue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get mep => $composableBuilder(
    column: $table.mep,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get selectedType => $composableBuilder(
    column: $table.selectedType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get manualRate => $composableBuilder(
    column: $table.manualRate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isManual => $composableBuilder(
    column: $table.isManual,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExchangeRatesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExchangeRatesTable> {
  $$ExchangeRatesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get official =>
      $composableBuilder(column: $table.official, builder: (column) => column);

  GeneratedColumn<double> get blue =>
      $composableBuilder(column: $table.blue, builder: (column) => column);

  GeneratedColumn<double> get mep =>
      $composableBuilder(column: $table.mep, builder: (column) => column);

  GeneratedColumn<String> get selectedType => $composableBuilder(
    column: $table.selectedType,
    builder: (column) => column,
  );

  GeneratedColumn<double> get manualRate => $composableBuilder(
    column: $table.manualRate,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isManual =>
      $composableBuilder(column: $table.isManual, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => column,
  );
}

class $$ExchangeRatesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExchangeRatesTable,
          ExchangeRate,
          $$ExchangeRatesTableFilterComposer,
          $$ExchangeRatesTableOrderingComposer,
          $$ExchangeRatesTableAnnotationComposer,
          $$ExchangeRatesTableCreateCompanionBuilder,
          $$ExchangeRatesTableUpdateCompanionBuilder,
          (
            ExchangeRate,
            BaseReferences<_$AppDatabase, $ExchangeRatesTable, ExchangeRate>,
          ),
          ExchangeRate,
          PrefetchHooks Function()
        > {
  $$ExchangeRatesTableTableManager(_$AppDatabase db, $ExchangeRatesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExchangeRatesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExchangeRatesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExchangeRatesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<double> official = const Value.absent(),
                Value<double> blue = const Value.absent(),
                Value<double> mep = const Value.absent(),
                Value<String> selectedType = const Value.absent(),
                Value<double?> manualRate = const Value.absent(),
                Value<bool> isManual = const Value.absent(),
                Value<DateTime> lastUpdated = const Value.absent(),
              }) => ExchangeRatesCompanion(
                id: id,
                official: official,
                blue: blue,
                mep: mep,
                selectedType: selectedType,
                manualRate: manualRate,
                isManual: isManual,
                lastUpdated: lastUpdated,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required double official,
                required double blue,
                required double mep,
                Value<String> selectedType = const Value.absent(),
                Value<double?> manualRate = const Value.absent(),
                Value<bool> isManual = const Value.absent(),
                required DateTime lastUpdated,
              }) => ExchangeRatesCompanion.insert(
                id: id,
                official: official,
                blue: blue,
                mep: mep,
                selectedType: selectedType,
                manualRate: manualRate,
                isManual: isManual,
                lastUpdated: lastUpdated,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExchangeRatesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExchangeRatesTable,
      ExchangeRate,
      $$ExchangeRatesTableFilterComposer,
      $$ExchangeRatesTableOrderingComposer,
      $$ExchangeRatesTableAnnotationComposer,
      $$ExchangeRatesTableCreateCompanionBuilder,
      $$ExchangeRatesTableUpdateCompanionBuilder,
      (
        ExchangeRate,
        BaseReferences<_$AppDatabase, $ExchangeRatesTable, ExchangeRate>,
      ),
      ExchangeRate,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$WalletsTableTableManager get wallets =>
      $$WalletsTableTableManager(_db, _db.wallets);
  $$TransactionsTableTableManager get transactions =>
      $$TransactionsTableTableManager(_db, _db.transactions);
  $$GoalsTableTableManager get goals =>
      $$GoalsTableTableManager(_db, _db.goals);
  $$GoalContributionsTableTableManager get goalContributions =>
      $$GoalContributionsTableTableManager(_db, _db.goalContributions);
  $$BudgetsTableTableManager get budgets =>
      $$BudgetsTableTableManager(_db, _db.budgets);
  $$SharedExpensesTableTableManager get sharedExpenses =>
      $$SharedExpensesTableTableManager(_db, _db.sharedExpenses);
  $$SplitItemsTableTableManager get splitItems =>
      $$SplitItemsTableTableManager(_db, _db.splitItems);
  $$FamilyGroupsTableTableManager get familyGroups =>
      $$FamilyGroupsTableTableManager(_db, _db.familyGroups);
  $$ExchangeRatesTableTableManager get exchangeRates =>
      $$ExchangeRatesTableTableManager(_db, _db.exchangeRates);
}
