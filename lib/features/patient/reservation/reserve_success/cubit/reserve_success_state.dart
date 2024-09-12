part of 'reserve_success_cubit.dart';

@immutable
sealed class ReserveSuccessState {}

final class ReserveSuccessInitial extends ReserveSuccessState {
  String doctorName;
  String time;
  String date;

  ReserveSuccessInitial(
      {required this.doctorName, required this.time, required this.date});
}
