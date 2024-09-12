import 'package:doctor_app/features/patient/reservation/cubit/calendar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  List<DateTime> enabledDays;
  DateTime? currentSelectedDay = null;
  Function(DateTime) onDaySelected;

  CalendarWidget(
      {super.key,
      required this.enabledDays,
      required this.onDaySelected,
      required this.currentSelectedDay});

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    const isJalali = true;

    const holidayTextStyle = TextStyle(
      color: Color(0xFFC9CFD8),
      fontSize: 16,
      fontFamily: 'Peyda',
      fontWeight: FontWeight.w500,
      height: 0.09,
    );

    const availableTextStyle = TextStyle(
      color: Color(0xFF2B303A),
      fontSize: 16,
      fontFamily: 'Peyda',
      fontWeight: FontWeight.w500,
      height: 0.09,
    );

    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFF5F7F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TableCalendar(
        firstDay: now.add(const Duration(days: -30)),
        lastDay: now.add(const Duration(days: 30)),
        focusedDay: currentSelectedDay ?? now,
        isJalali: isJalali,
        availableGestures: AvailableGestures.horizontalSwipe,
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
        },
        startingDayOfWeek:
            isJalali ? StartingDayOfWeek.saturday : StartingDayOfWeek.sunday,
        weekendDays: isJalali
            ? const [DateTime.friday, DateTime.thursday]
            : const [DateTime.saturday, DateTime.sunday],
        holidayPredicate: (day) {
          return false;
        },
        selectedDayPredicate: (day) {
          if (currentSelectedDay == null) {
            return false;
          }
          return DateTime(day.year, day.month, day.day) ==
              DateTime(currentSelectedDay!.year, currentSelectedDay!.month,
                  currentSelectedDay!.day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          onDaySelected(selectedDay);
        },
        enabledDayPredicate: (day) {
          for (final item in enabledDays) {
            if (item.isAtSameMomentAs(DateTime(day.year, day.month, day.day))) {
              return true;
            }
          }
          return false;
        },
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            color: Color(0xFF707684),
            fontSize: 12,
            fontFamily: 'Peyda',
            fontWeight: FontWeight.w500,
            height: 0.11,
          ),
          weekendStyle: TextStyle(
            color: Color(0xFF707684),
            fontSize: 12,
            fontFamily: 'Peyda',
            fontWeight: FontWeight.w500,
            height: 0.11,
          ),
          dowTextFormatter: (date, locale) {
            var f = date.toJalali().formatter;
            return (f.wN)[0];
          },
        ),
        daysOfWeekHeight: 40,
        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, day) {
            var f = day.toJalali().formatter;
            return Text(
              '${f.mN} ${f.yyyy}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0D111B),
                fontSize: 16,
                fontFamily: 'Peyda',
                fontWeight: FontWeight.w500,
                height: 0.09,
              ),
            );
          },
        ),
        calendarStyle: CalendarStyle(
            outsideDaysVisible: false,
            // markersOffset: const PositionedOffset(top: 3, end: 3),
            // markersAutoAligned: false,
            defaultTextStyle: availableTextStyle,
            weekendTextStyle: availableTextStyle,
            disabledTextStyle: holidayTextStyle,
            selectedTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Peyda',
              fontWeight: FontWeight.w500,
              height: 0.09,
            ),
            holidayTextStyle: availableTextStyle,
            outsideTextStyle: holidayTextStyle,
            todayTextStyle: availableTextStyle.copyWith(
              color: Color(0xFF335BFF),
            ),
            cellMargin: EdgeInsets.only(
              left: 5,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            defaultDecoration: BoxDecoration(),
            disabledDecoration: BoxDecoration(),
            weekendDecoration: BoxDecoration(),
            holidayDecoration: BoxDecoration(),
            todayDecoration: BoxDecoration(),
            selectedDecoration: BoxDecoration(
              color: Color(0xFF335BFF),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
