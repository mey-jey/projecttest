import 'package:dio/dio.dart';
import 'package:doctor_app/features/patient/reservation/choose_data/data/free_time_data_source.dart';
import 'package:doctor_app/features/patient/reservation/personal_info/data/send_user_info_data_source.dart';
import 'package:doctor_app/features/patient/reservation/reservation_info/data/reservation_info_data_source.dart';
import 'package:doctor_app/features/patient/search_list/data/search_list_data_source.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

var locator = GetIt.I;

Future<void> getItInit() async {
  locator.registerSingleton<Dio>(Dio());
  locator.registerSingleton<http.Client>(http.Client());
  locator.registerFactory<SearchListDataSource>(() => SearchListDataSourceImpl());
  locator.registerFactory<FreeTimeDataSource>(() => FreeTimeDataSourceImpl());
  locator.registerFactory<SendUserInfoDataSource>(() => SendUserInfoDataSourceImpl());
  locator.registerFactory<ReservationInfoDataSource>(() => ReservationInfoDataSourceImpl());
}
