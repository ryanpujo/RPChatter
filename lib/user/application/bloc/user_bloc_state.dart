import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';

part 'user_bloc_state.freezed.dart';

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState.initialState(
      {User? user, required List<User> users}) = InitialState;
  const factory UserBlocState.loadingState(
      {User? user, required List<User> users}) = LoadingState;
  const factory UserBlocState.loadedState({
    User? user,
    required List<User> users,
    auth.UserCredential? cred,
  }) = LoadedState;
  const factory UserBlocState.failureState(
      {User? user,
      required List<User> users,
      required Failure failure}) = FailureState;
}
