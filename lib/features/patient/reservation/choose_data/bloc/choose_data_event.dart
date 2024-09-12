part of 'choose_data_bloc.dart';

sealed class ChooseDataEvent extends Equatable {
  const ChooseDataEvent();
}

class ChooseDataGetFreeTimesEvent extends ChooseDataEvent {
  final String doctorId;

  ChooseDataGetFreeTimesEvent(this.doctorId);

  @override
  List<Object> get props => [doctorId];
}

class ChooseDataSelectTimeEvent extends ChooseDataEvent {
  final String selectedStartTime;
  final String selectedEndTime;

  ChooseDataSelectTimeEvent(this.selectedStartTime,this.selectedEndTime);

  @override
  List<Object> get props => [selectedStartTime,selectedEndTime];
}

class ChooseDataSaveDateTimeInfoEvent extends ChooseDataEvent {

  String doctorName;
  ChooseDataSaveDateTimeInfoEvent(this.doctorName);

  @override
  List<Object> get props => [];
}

class ChooseDataSelectDateEvent extends ChooseDataEvent {
  final DateTime data;

  const ChooseDataSelectDateEvent(this.data);

  @override
  List<Object> get props => [data];
}
