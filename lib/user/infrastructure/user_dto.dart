import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    required String fName,
    required String lName,
    required String username,
    required String email,
    required String password,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User _) {
    return UserDto(
      fName: _.fName,
      lName: _.lName,
      username: _.username,
      email: _.email,
      password: _.password,
    );
  }

  User toUser() {
    return User(
      fName: fName,
      lName: lName,
      username: username,
      email: email,
      password: password,
    );
  }
}
