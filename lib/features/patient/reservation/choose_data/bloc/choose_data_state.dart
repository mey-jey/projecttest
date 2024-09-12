part of 'choose_data_bloc.dart';

sealed class ChooseDataState extends Equatable {
  const ChooseDataState();
}

class ChooseDataLoading extends ChooseDataState {
  @override
  List<Object> get props => [];
}

class ChooseDataLoaded extends ChooseDataState {
  Map<DateTime, List<Appointment>> data;
  List<Appointment> dateAppointments = List.empty();
  DateTime? seletedDate = null;
  String selectedStartTime = "";
  String selectedEndTime = "";

  ChooseDataLoaded(
    this.data,
    this.dateAppointments,
    this.seletedDate,
    this.selectedStartTime,
    this.selectedEndTime,
  );

  @override
  List<Object> get props => [data, dateAppointments, selectedStartTime];
}
