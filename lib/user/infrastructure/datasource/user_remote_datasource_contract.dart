import 'package:dartz/dartz.dart';
import 'package:ryan_pujo_app/core/infrastructure/remote_response.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

abstract class UserRemoteDatasourceContract {
  Future<RemoteResponse<UserDto>> registerUser(UserDto dto);
  Future<RemoteResponse<UserDto>> getByUsername(String username);
  Future<RemoteResponse<List<UserDto>>> getUsers();
  Future<RemoteResponse<Unit>> update(UserDto dto);
  Future<RemoteResponse<Unit>> delete(String username);
}
