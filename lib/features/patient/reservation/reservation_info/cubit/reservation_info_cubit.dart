import 'package:bloc/bloc.dart';
import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/features/patient/reservation/reservation_info/data/reservation_info_data_source.dart';
import 'package:doctor_app/models/ReserveInfo.dart';
import 'package:equatable/equatable.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'reservation_info_state.dart';

class ReservationInfoCubit extends Cubit<ReservationInfoState> {
  ReservationInfoDataSource dataSource = locator.get();

  ReservationInfoCubit() : super(ReservationInfoInitial(""));

  loadData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var f = DateTime.parse(pref.getString("date")!).toJalali().formatter;
    var date = "${f.wN} ${f.d} ${f.mN} ${f.yyyy}";
    var startTime = pref.getString("startTime");
    var endTime = pref.getString("endTime");
    emit(ReservationInfoInitial("$date ، ساعت $startTime تا $endTime"));
  }

  void sendDate(Function onSendFinish) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await dataSource.send(ReserveInfo(
      doctorId: int.parse(pref.getString("doctorId")!),
      patientId: pref.getInt("patient_id")!,
      date: pref.getString("date")!,
      time: pref.getString("startTime")!,
      reason: "a fake reason",
    ));
    onSendFinish();
  }
}
