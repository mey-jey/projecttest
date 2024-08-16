part of 'calendar_cubit.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.data(DateTime focusedDay) = _Data;
  const factory CalendarState.loading(DateTime focusedDay) = _Loading;
}
