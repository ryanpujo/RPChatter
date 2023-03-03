import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String fName,
    required String lName,
    required String username,
    required String email,
    required String password,
  }) = _User;
}
