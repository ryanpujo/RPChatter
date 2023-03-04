import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

abstract class UserRemoteDatasourceContract {
  Future<UserDto> registerUser(UserDto dto);
}
