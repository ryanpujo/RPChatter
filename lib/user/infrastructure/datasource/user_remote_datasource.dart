import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ryan_pujo_app/core/infrastructure/dio_extensions.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/failed_precondition_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/user_exist_exception.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

class UserRemoteDatasource implements UserRemoteDatasourceContract {
  final Dio _dio;
  const UserRemoteDatasource(this._dio);

  @override
  Future<int> registerUser(UserDto user) async {
    String uri = "localhost:4001/user";
    try {
      final res = await _dio.post(uri, data: user.toJson());
      Map<String, dynamic> result;
      if (res.statusCode == 201) {
        result = res.data as Map<String, dynamic>;
        return (result['data'] as int);
      } else if (res.statusCode == 400) {
        result = res.data as Map<String, dynamic>;
        if ((result['code'] as int) == 6) {
          throw UserAlreadyExistException((result['code'] as int));
        }
        throw FailePreconditionException(res.statusCode!);
      } else {
        throw RestApiException(res.statusCode!);
      }
    } on DioError catch (e) {
      if (e.isConnectionError) {
        throw const SocketException("no connection available");
      } else if (e.response != null) {
        throw const HttpException("something went wrong");
      } else {
        rethrow;
      }
    }
  }
}
