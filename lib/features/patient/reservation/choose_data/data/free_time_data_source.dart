import 'dart:convert';

import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/models/Appointment.dart';
import 'package:http/http.dart' as http;

abstract class FreeTimeDataSource {
  Future<List<Appointment>> getFreeTimes(String doctorId);
}

class FreeTimeDataSourceImpl extends FreeTimeDataSource {
  final http.Client _client = locator.get();

  @override
  Future<List<Appointment>> getFreeTimes(String doctorId) async {
    var result = await _client.get(Uri.parse(
        "https://karshenasi-app.darkube.app/api/free-times/doctor/$doctorId"));
    return (jsonDecode(result.body) as List<dynamic>)
        .map((json) => Appointment.fromJson(json))
        .toList();
  }
}
