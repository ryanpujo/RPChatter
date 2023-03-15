import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ryan_pujo_app/core/infrastructure/dio_extensions.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/remote_response.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

class UserRemoteDatasource implements UserRemoteDatasourceContract {
  final Dio _dio;
  const UserRemoteDatasource(this._dio);

  @override
  Future<UserDto> registerUser(UserDto user) async {
    String uri = "http://10.0.2.2:4001/user";
    try {
      final res = await _dio.post(
        uri,
        data: user.toJson(),
      );
      Map<String, dynamic> result;
      UserDto? newUser;
      if (res.statusCode == 201) {
        result = res.data as Map<String, dynamic>;
        newUser = UserDto.fromJson(result['data'] as Map<String, dynamic>);
      }
      return newUser!;
    } on DioError catch (e) {
      if (e.isConnectionError) {
        throw const SocketException("no connection available");
      } else if (e.response != null) {
        String message = (e.response?.data as Map<String, dynamic>)['error']!;
        int code = e.response?.statusCode ?? 500;
        throw RestApiException(code, message);
      } else {
        throw RestApiException(500, e.message!);
      }
    } catch (e) {
      throw RestApiException(500, e.toString());
    }
  }

  @override
  Future<RemoteResponse<UserDto>> getByUsername(String username) async {
    try {
      final res = await _dio.get("http://192.168.117.61:4001/user/$username");
      Map<String, dynamic>? result;
      if (res.statusCode == 200) {
        result = res.data as Map<String, dynamic>;
      }
      if (result != null) {
        return RemoteResponse.withData(
            UserDto.fromJson(result["data"] as Map<String, dynamic>));
      }
      return const RemoteResponse.noDataFound();
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        int? code = (e.response?.data as Map<String, dynamic>)['code'];
        if (code != null && code == 5) {
          return const RemoteResponse.noDataFound();
        } else {
          return const RemoteResponse.badRequest();
        }
      } else {
        rethrow;
      }
    }
  }
}
