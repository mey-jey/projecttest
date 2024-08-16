import 'package:dio/dio.dart';
import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/utils/api_exception.dart';

abstract class ILoginDatasource {
  Future<String> login(int phoneNumber);
}

class LoginRemoteDatasource extends ILoginDatasource {
  final Dio _dio = locator.get();
  @override
  Future<String> login(int phoneNumber) {
    try {
      // TODO: implement login
      throw UnimplementedError();
    } on DioException catch (ex) {
      throw ApiException(ex.response?.statusCode, ex.response?.data['message']);
    } catch (ex) {
      throw ApiException(0, 'Unknown error!');
    }
  }
}
