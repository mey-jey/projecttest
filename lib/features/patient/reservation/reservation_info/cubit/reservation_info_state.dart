part of 'reservation_info_cubit.dart';

sealed class ReservationInfoState extends Equatable {
  const ReservationInfoState();
}

final class ReservationInfoInitial extends ReservationInfoState {
  String time = "";

  ReservationInfoInitial(this.time);

  @override
  List<Object> get props => [];
}
