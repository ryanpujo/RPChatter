import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ryan_pujo_app/core/infrastructure/dio_extensions.dart';
import 'package:ryan_pujo_app/core/infrastructure/remote_response.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

class UserRemoteDatasource implements UserRemoteDatasourceContract {
  final Dio _dio;
  const UserRemoteDatasource(this._dio);
  final realUrl = "http://192.168.117.61:4001/";
  final url = "http://10.0.2.2:4001/";

  @override
  Future<RemoteResponse<UserDto>> registerUser(UserDto user) async {
    String uri = "${realUrl}user";
    try {
      final res = await _dio.post(
        uri,
        data: user.toJson(),
      );
      Map<String, dynamic> result = res.data as Map<String, dynamic>;
      UserDto? newUser =
          UserDto.fromJson(result['data'] as Map<String, dynamic>);
      return RemoteResponse.withData(newUser);
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return const RemoteResponse.noConnection();
      }
      if (e.response!.statusCode! < 500) {
        final data = e.response?.data as Map<String, dynamic>;
        if (data["code"] != null && data["code"] == 6) {
          return const RemoteResponse.userAlreadyExist();
        }
        return const RemoteResponse.badRequest();
      } else {
        return RemoteResponse.internalError(e.response!.statusCode!);
      }
    }
  }

  @override
  Future<RemoteResponse<UserDto>> getByUsername(String username) async {
    try {
      final res = await _dio.get("${realUrl}user/$username");
      Map<String, dynamic>? json = res.data as Map<String, dynamic>;
      return RemoteResponse.withData(
          UserDto.fromJson(json["data"] as Map<String, dynamic>));
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return const RemoteResponse.noConnection();
      }
      if (e.response!.statusCode! < 500) {
        int? code = (e.response?.data as Map<String, dynamic>)['code'];
        if (code != null && code == 5) {
          return const RemoteResponse.noDataFound();
        }
        return const RemoteResponse.badRequest();
      } else {
        return RemoteResponse.internalError(e.response!.statusCode!);
      }
    }
  }

  @override
  Future<RemoteResponse<List<UserDto>>> getUsers() async {
    try {
      final response = await _dio.get("${url}user");
      Map<String, List<dynamic>> json =
          response.data as Map<String, List<dynamic>>;
      var users = json["data"]!;
      if (users.isEmpty) {
        return const RemoteResponse.noDataFound();
      }
      return RemoteResponse.withData(users as List<UserDto>);
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return const RemoteResponse.noConnection();
      }
      if (e.response!.statusCode! < 500) {
        return const RemoteResponse.badRequest();
      }
      return RemoteResponse.internalError(e.response!.statusCode!);
    }
  }

  @override
  Future<RemoteResponse<Unit>> update(UserDto dto) async {
    try {
      final _ = await _dio.patch("${url}user");
      return const RemoteResponse.withoutData();
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return const RemoteResponse.noConnection();
      }
      if (e.response!.statusCode! < 500) {
        return const RemoteResponse.badRequest();
      }
      return RemoteResponse.internalError(e.response!.statusCode!);
    }
  }

  @override
  Future<RemoteResponse<Unit>> delete(String username) async {
    try {
      final _ = await _dio.delete("${url}user");
      return const RemoteResponse.withoutData();
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return const RemoteResponse.noConnection();
      }
      if (e.response!.statusCode! < 500) {
        return const RemoteResponse.badRequest();
      }
      return RemoteResponse.internalError(e.response!.statusCode!);
    }
  }
}
