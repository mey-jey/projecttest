import 'package:shamsi_date/shamsi_date.dart';

class PrivateUtils {
  static DateTime firstDayOfMonth(DateTime month, bool isJalali) {
    if(isJalali){
      // print("firstDayOfMonth ${Jalali(month.toJalali().year, month.toJalali().month, 1)}");
      return Jalali(month.toJalali().year, month.toJalali().month, 1)
          .toUtcDateTime();
    } else {
      return DateTime.utc(month.year, month.month, 1);
    }
  }

  static DateTime lastDayOfMonth(DateTime month, bool isJalali) {
    DateTime date;

    if(isJalali){
      if (month.toJalali().month < 12) {
        date = Jalali(month.toJalali().year, month.toJalali().month + 1, 1)
            .toUtcDateTime();
      } else {
        date = Jalali(month.toJalali().year + 1, 1, 1).toUtcDateTime();
      }
      // print("lastDayOfMonth ${date.subtract(const Duration(days: 1)).toJalali()}");
    }else{
      date = month.month < 12
          ? DateTime.utc(month.year, month.month + 1, 1)
          : DateTime.utc(month.year + 1, 1, 1);
    }

    return date.subtract(const Duration(days: 1));
  }

  static int getMonthCount(DateTime first, DateTime last, bool isJalali) {
    var yearDif = last.year - first.year;
    var monthDif = last.month - first.month;

    if (isJalali) {
      yearDif = last.toJalali().year - first.toJalali().year;
      monthDif = last.toJalali().month - first.toJalali().month;
    }
    return yearDif * 12 + monthDif;
  }
}
