import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user.dart';

part 'user_bloc_event.freezed.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent {
  const factory UserBlocEvent.register() = _RegisterEvent;
  const factory UserBlocEvent.getByUsername(String username) = _GetByUsername;
  const factory UserBlocEvent.getUsers() = _GetUsers;
  const factory UserBlocEvent.update(User user) = _Update;
  const factory UserBlocEvent.delete(String username) = _Delete;
}
