import 'package:intl/intl.dart';

extension CurrencyFormatter on num {
  String toCurrency({
    String locale = 'en_US',
    String symbol = '',
    int decimalDigits = 0,
  }) {
    final format = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: decimalDigits,
    );
    return format.format(this);
  }
}