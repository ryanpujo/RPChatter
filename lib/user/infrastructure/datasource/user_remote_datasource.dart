import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ryan_pujo_app/core/infrastructure/dio_extensions.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/failed_precondition_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/user_exist_exception.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

import '../../../core/infrastructure/exceptions/validation_exception.dart';

class UserRemoteDatasource implements UserRemoteDatasourceContract {
  final Dio _dio;
  const UserRemoteDatasource(this._dio);

  @override
  Future<UserDto> registerUser(UserDto user) async {
    String uri = "http://10.0.2.2:4001/user";
    try {
      final res = await _dio.post(uri, data: user.toJson());
      Map<String, dynamic> result;
      if (res.statusCode == 201) {
        result = res.data as Map<String, dynamic>;
        final newUser =
            UserDto.fromJson(result['data'] as Map<String, dynamic>);
        return newUser;
      } else if (res.statusCode == 400) {
        result = res.data as Map<String, dynamic>;

        if (result['grpcCode'] != null && (result['grpcCode'] as int) == 6) {
          throw UserAlreadyExistException((result['grpcCode'] as int));
        } else if (result['errors'] != null) {
          throw ValidationException(
            errors: result['errors'],
            statusCode: res.statusCode!,
          );
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
