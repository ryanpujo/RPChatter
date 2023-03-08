import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user.dart';

part 'user_bloc_event.freezed.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent {
  const factory UserBlocEvent.register(User user) = RegisterEvent;
  const factory UserBlocEvent.isUsernameAvailable(String username) =
      IsUsernameAvailableEvent;
}
