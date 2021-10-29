import 'package:intl/intl.dart';

class Util {
  static final currencyFormatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
  static final dateFormatter = DateFormat('dd/MM/YYYY', 'pt_BR');
}
