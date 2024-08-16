import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamsi_date/shamsi_date.dart';

part 'calendar_state.dart';
part 'calendar_cubit.freezed.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarState.data(DateTime.now()));

  var firstDay = DateTime.now().add(const Duration(days: -30));
  var lastDay = DateTime.now().add(const Duration(days: 30));

  changeFocusedDay(DateTime day){
    if(day.isBefore(lastDay) && day.isAfter(firstDay)){
      emit(CalendarState.data(day));
    }
  }

  bool isThisDayAvailable(DateTime day){
    if(day.isBefore(lastDay) && day.isAfter(firstDay)){
      return day.toJalali().weekDay.isEven;
    }
    return false;
  }

}
