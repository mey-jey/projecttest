import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.I;

Future<void> getItInit() async {
  locator.registerSingleton<Dio>(Dio());
}
