import 'package:bloc/bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

import 'user_bloc_event.dart';

class UserBlocBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBlocBloc(this.repository)
      : super(const UserBlocState.initialState(user: null, users: [])) {
    on<UserBlocEvent>((event, emit) async {
      await event.map(
        register: (event) async => await _registerUser(event, emit),
        isUsernameAvailable: (event) async =>
            await _isUsernameAvailable(event, emit),
      );
    });
  }
  final UserRepositoryContract repository;

  Future<void> _registerUser(
      RegisterEvent event, Emitter<UserBlocState> emit) async {
    emit(UserBlocState.loadingState(user: state.user, users: state.users));
    final failureOrSuccess =
        await repository.registerUser(UserDto.fromDomain(event.user));

    failureOrSuccess.fold((l) {
      l.map(
          serverFailure: (value) => emit(
              UserBlocState.failureState(users: state.users, failure: value)));
    },
        (r) => emit(UserBlocState.loadedState(
              users: state.users,
              user: r,
            )));
  }

  Future<void> _isUsernameAvailable(
      IsUsernameAvailableEvent event, Emitter<UserBlocState> emit) async {
    final isAvailable = await repository.isUsernameAvailable(event.username);
    emit(UserBlocState.loadedState(
        users: state.users, isUsernameAvailable: isAvailable));
  }
}
