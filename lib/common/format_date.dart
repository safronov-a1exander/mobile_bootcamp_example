import 'package:intl/intl.dart';

String formatDate() {
  return DateFormat("EEEE dd MMMM").format(DateTime.now());
}

String formatDateToDayOfWeek({required String date}) {
  return DateFormat("EEEE").format(DateTime.parse(date));
}

String formatTimeToHour({required String dateTime}) {
  return DateFormat("jm").format(DateTime.parse(dateTime)).toString();
}
