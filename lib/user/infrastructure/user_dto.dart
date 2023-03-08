// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    @JsonKey(name: "Fname") required String fName,
    @JsonKey(name: "Lname") required String lName,
    @JsonKey(name: "Username") required String username,
    @JsonKey(name: "Email") required String email,
    @JsonKey(defaultValue: "") required String password,
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
