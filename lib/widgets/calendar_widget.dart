import 'package:doctor_app/features/patient/reservation/cubit/calendar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendarWidget extends StatelessWidget {
  Color? backgroundColor;
  double? margin;
  int? firstDay;


   CustomCalendarWidget({super.key,this.backgroundColor,this.margin,this.firstDay});

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

    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.all(margin??8),
          decoration: BoxDecoration(
            color: backgroundColor ??const  Color(0xFFF5F7F9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TableCalendar(
            firstDay: now.add(  Duration(days:firstDay??-30)),
            lastDay: now.add(const Duration(days: 30)),
            focusedDay: state.focusedDay,
            isJalali: isJalali,
            availableGestures: AvailableGestures.horizontalSwipe,
            availableCalendarFormats: const {
              CalendarFormat.month: 'Month',
            },
            startingDayOfWeek: isJalali ? StartingDayOfWeek.saturday : StartingDayOfWeek.sunday,
            weekendDays: isJalali
                ? const [DateTime.friday, DateTime.thursday]
                : const [DateTime.saturday, DateTime.sunday],
            holidayPredicate: (day) {
              return false;
            },
            selectedDayPredicate: (day) {
              return state.focusedDay == day;
            },
            onDaySelected: (selectedDay, focusedDay) {
              context.read<CalendarCubit>().changeFocusedDay(focusedDay);
            },
            enabledDayPredicate: (day) {
              /// todo connect to api
              return context.read<CalendarCubit>().isThisDayAvailable(day);
            },
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: const TextStyle(
                color: Color(0xFF707684),
                fontSize: 12,
                fontFamily: 'Peyda',
                fontWeight: FontWeight.w500,
                height: 0.11,
              ),
              weekendStyle: const TextStyle(
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
                  style: const TextStyle(
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
                selectedTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Peyda',
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                ),
                holidayTextStyle: availableTextStyle,
                outsideTextStyle: holidayTextStyle,
                todayTextStyle: availableTextStyle.copyWith(
                  color: const Color(0xFF335BFF),
                ),
                cellMargin: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 5,
                  bottom: 5,
                ),
                defaultDecoration: const BoxDecoration(),
                disabledDecoration: const BoxDecoration(),
                weekendDecoration: const BoxDecoration(),
                holidayDecoration: const BoxDecoration(),
                todayDecoration: const BoxDecoration(),
                selectedDecoration: BoxDecoration(
                  color: const Color(0xFF335BFF),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        );
      },
    );
  }
}
