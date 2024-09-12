import 'dart:convert';

import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/models/SearchItem.dart';
import 'package:http/http.dart' as http;

abstract class SearchDataSource {
  Future<List<Doctor>> searchDoctors(String query);
}

class SearchDataSourceImpl extends SearchDataSource {
  final http.Client _client = locator.get();

  @override
  Future<List<Doctor>> searchDoctors(String query) async {
    final response = await _client.get(
        Uri.parse(
            'https://karshenasi-app.darkube.app/api/auth/doctors?skip=0&limit=10'));
    return (jsonDecode(response.body) as List<dynamic>).map((json) => Doctor.fromJson(json)).toList();
  }
}
