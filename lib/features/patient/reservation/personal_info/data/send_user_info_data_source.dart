import 'dart:convert';

import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/models/Appointment.dart';
import 'package:doctor_app/models/patient.dart';
import 'package:http/http.dart' as http;

abstract class SendUserInfoDataSource {
  Future<Patient> invoke(Patient info);
}

class SendUserInfoDataSourceImpl extends SendUserInfoDataSource {
  final http.Client _client = locator.get();

  @override
  Future<Patient> invoke(Patient info) async {
    var result = await _client.post(
        Uri.parse(
            "https://karshenasi-app.darkube.app/api/patients"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(info.toJson()));
    return Patient.fromJson(jsonDecode(result.body));
  }
}
