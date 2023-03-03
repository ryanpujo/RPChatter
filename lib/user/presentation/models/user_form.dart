import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form.freezed.dart';

@freezed
class UserForm with _$UserForm {
  const UserForm._();
  const factory UserForm.form({
    String? fName,
    String? lName,
    String? username,
    String? email,
    String? password,
  }) = FormUser;
}
