import 'package:ryan_pujo_app/core/infrastructure/remote_response.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

abstract class UserRemoteDatasourceContract {
  Future<UserDto> registerUser(UserDto dto);
  Future<RemoteResponse<UserDto>> getByUsername(String username);
  Future<RemoteResponse<List<UserDto>>> getUsers();
  Future<RemoteResponse<String>> update(UserDto dto);
  Future<RemoteResponse<String>> delete(String username);
}
