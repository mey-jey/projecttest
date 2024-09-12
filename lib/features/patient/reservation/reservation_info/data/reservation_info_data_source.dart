import 'dart:convert';

import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/models/Appointment.dart';
import 'package:doctor_app/models/ReserveInfo.dart';
import 'package:http/http.dart' as http;

abstract class ReservationInfoDataSource {
  Future<void> send(ReserveInfo info);
}

class ReservationInfoDataSourceImpl extends ReservationInfoDataSource {
  final http.Client _client = locator.get();

  @override
  Future<void> send(ReserveInfo info) async {
    var res = await _client.post(
        Uri.parse("https://karshenasi-app.darkube.app/api/appointments"),
        body: jsonEncode(info.toJson()),
        headers: {"Content-Type": "application/json"});
    print(res);
  }
}
