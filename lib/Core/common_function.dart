import 'package:intl/intl.dart';

class CommonFunction {
  static String dateFormatterChange(DateTime date) {
    DateFormat formatter = DateFormat.yMd();
    // DateFormat formatter = DateFormat.yMMMMd('en_US');
    // DateFormat formatter = DateFormat.jm();/* <= For Live Timeing */
    // DateFormat formatter = DateFormat.yMd().add_jm();
    return formatter.format(DateTime.now());
  }
}
