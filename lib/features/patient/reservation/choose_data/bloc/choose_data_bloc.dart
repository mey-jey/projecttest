import 'package:bloc/bloc.dart';
import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/features/patient/reservation/choose_data/data/free_time_data_source.dart';
import 'package:doctor_app/models/Appointment.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'choose_data_event.dart';
part 'choose_data_state.dart';

class ChooseDataBloc extends Bloc<ChooseDataEvent, ChooseDataState> {
  final FreeTimeDataSource _dataSource = locator.get();
  Map<DateTime, List<Appointment>> freeTimes = {};
  List<Appointment> times = [];
  DateTime? selectedDate;
  String selectedStartTime = "";
  String selectedEndTime = "";
  String doctorId = "";

  ChooseDataBloc() : super(ChooseDataLoading()) {
    on<ChooseDataGetFreeTimesEvent>((event, emit) async {
      doctorId = event.doctorId;
      var appointments = await _dataSource.getFreeTimes(doctorId);
      freeTimes = groupBy(appointments, (appointment) => appointment.date);
      emit(ChooseDataLoaded(
          freeTimes, times, selectedDate, selectedStartTime, selectedEndTime));
    });
    on<ChooseDataSelectDateEvent>((event, emit) {
      selectedDate = event.data;
      selectedStartTime = "";
      selectedEndTime = "";
      times = findAppointmentsForDate(freeTimes, selectedDate!) ?? [];
      emit(ChooseDataLoaded(
          freeTimes, times, selectedDate, selectedStartTime, selectedEndTime));
    });
    on<ChooseDataSelectTimeEvent>((event, emit) {
      selectedStartTime = event.selectedStartTime;
      selectedEndTime = event.selectedEndTime;
      emit(ChooseDataLoaded(
          freeTimes, times, selectedDate, selectedStartTime, selectedEndTime));
    });

    on<ChooseDataSaveDateTimeInfoEvent>((event, emit) async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString("doctorId", doctorId);
      await sharedPreferences.setString("doctorName", event.doctorName);
      await sharedPreferences.setString("startTime", selectedStartTime);
      await sharedPreferences.setString("endTime", selectedEndTime);
      await sharedPreferences.setString("date", DateFormat('yyyy-MM-dd').format(selectedDate!));
    });
  }
}

Map<K, List<T>> groupBy<T, K>(Iterable<T> list, K Function(T) keyFunction) {
  final map = <K, List<T>>{};
  for (final item in list) {
    final key = keyFunction(item);
    map[key] = (map[key] ?? [])..add(item);
  }
  return map;
}

List<Appointment>? findAppointmentsForDate(
    Map<DateTime, List<Appointment>> appointmentsMap, DateTime targetDate) {
  for (final date in appointmentsMap.keys) {
    if (date.isAtSameMomentAs(
        DateTime(targetDate.year, targetDate.month, targetDate.day))) {
      return appointmentsMap[date];
    }
  }
  return null;
}
