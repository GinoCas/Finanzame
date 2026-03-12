import 'package:intl/intl.dart';
import '../constants/enums.dart';

class CurrencyFormatter {
  CurrencyFormatter._();

  static final _arsFormat = NumberFormat.currency(
    locale: 'es_AR',
    symbol: '\$',
    decimalDigits: 2,
  );

  static final _usdFormat = NumberFormat.currency(
    locale: 'en_US',
    symbol: 'U\$S ',
    decimalDigits: 2,
  );

  static final _arsCompact = NumberFormat.compact(locale: 'es_AR');

  /// Formatea un monto con el símbolo de la moneda
  static String format(double amount, Currency currency, {bool compact = false}) {
    if (currency == Currency.ars) {
      return compact
          ? '\$ ${_arsCompact.format(amount)}'
          : _arsFormat.format(amount);
    } else {
      return _usdFormat.format(amount);
    }
  }

  /// Formatea solo el número sin símbolo
  static String formatNumber(double amount) {
    return NumberFormat('#,##0.00', 'es_AR').format(amount);
  }

  /// Parsea un string a double (maneja comas y puntos)
  static double? parse(String input) {
    final clean = input.replaceAll('.', '').replaceAll(',', '.');
    return double.tryParse(clean);
  }

  /// Formatea mostrando signo + para ingresos, - para egresos
  static String formatSigned(double amount, Currency currency, TransactionType type) {
    final formatted = format(amount.abs(), currency);
    return type == TransactionType.income ? '+$formatted' : '-$formatted';
  }
}

class DateFormatter {
  DateFormatter._();

  static final _dayMonth = DateFormat('d MMM', 'es_AR');
  static final _dayMonthYear = DateFormat('d MMM yyyy', 'es_AR');
  static final _monthYear = DateFormat('MMMM yyyy', 'es_AR');
  static final _full = DateFormat('EEEE d \'de\' MMMM', 'es_AR');
  static final _short = DateFormat('dd/MM/yy', 'es_AR');
  static final _time = DateFormat('HH:mm', 'es_AR');

  static String dayMonth(DateTime date) => _dayMonth.format(date);
  static String dayMonthYear(DateTime date) => _dayMonthYear.format(date);
  static String monthYear(DateTime date) => _monthYear.format(date);
  static String full(DateTime date) => _full.format(date);
  static String short(DateTime date) => _short.format(date);
  static String time(DateTime date) => _time.format(date);

  static String relative(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateOnly = DateTime(date.year, date.month, date.day);
    final diff = today.difference(dateOnly).inDays;

    if (diff == 0) return 'Hoy';
    if (diff == 1) return 'Ayer';
    if (diff < 7) return 'Hace $diff días';
    return dayMonthYear(date);
  }
}
