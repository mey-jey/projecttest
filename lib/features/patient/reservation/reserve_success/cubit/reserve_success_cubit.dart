import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'reserve_success_state.dart';

class ReserveSuccessCubit extends Cubit<ReserveSuccessState> {
  ReserveSuccessCubit()
      : super(ReserveSuccessInitial(doctorName: "", time: "", date: ""));

  loadData() async {
    var pref = await SharedPreferences.getInstance();
    var f = DateTime.parse(pref.getString("date")!).toJalali().formatter;
    var date = "${f.wN} ${f.d} ${f.mN} ${f.yyyy}";
    var startTime = pref.getString("startTime");
    var endTime = pref.getString("endTime");
    emit(ReserveSuccessInitial(
        doctorName: pref.getString("doctorName")!,
        date: "$date",
        time: "ساعت $startTime تا $endTime"));
  }
}
