import 'package:bloc/bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

import 'user_bloc_event.dart';

class UserBlocBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBlocBloc(this._repository)
      : super(const UserBlocState.initialState(user: null, users: [])) {
    on<UserBlocEvent>((event, emit) async {
      event.map(
        register: (event) async => await _registerUser(event, emit),
        getByUsername: (event) async => await _getByUsername(event, emit),
        getUsers: (event) async => await _getUsers(event, emit),
        update: (event) async => await _update(event, emit),
        delete: (event) async => await _delete(event, emit),
      );
    });
  }
  final UserRepositoryContract _repository;

  Future<void> _registerUser(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(user: state.user, users: state.users));
    event.maybeWhen(
      orElse: () {},
      register: (user) async {
        final failureOrSuccess =
            await _repository.registerUser(UserDto.fromDomain(user));

        failureOrSuccess.fold(
          (l) {
            l.map(
              serverFailure: (value) => emit(UserBlocState.failureState(
                  users: state.users, failure: value)),
              clientFailure: (value) => emit(UserBlocState.failureState(
                  users: state.users, failure: value)),
            );
          },
          (r) => emit(
            UserBlocState.loadedState(
              users: state.users,
              user: r,
            ),
          ),
        );
      },
    );
  }

  Future<void> _getByUsername(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(users: state.users));
    event.maybeWhen(
      orElse: () {},
      getByUsername: (username) async {
        final leftOrRight = await _repository.getByUsername(username);
        leftOrRight.fold(
          (l) {
            l.map(
              serverFailure: (value) {
                emit(UserBlocState.failureState(
                  users: state.users,
                  failure: value,
                ));
              },
              clientFailure: (value) {
                emit(UserBlocState.failureState(
                  users: state.users,
                  failure: value,
                ));
              },
            );
          },
          (r) => emit(UserBlocState.loadedState(users: state.users, user: r)),
        );
      },
    );
  }

  Future<void> _getUsers(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(users: state.users));
    event.maybeWhen(
      orElse: () {},
      getUsers: () async {
        final leftOrRight = await _repository.getUsers();
        leftOrRight.fold((l) {
          l.map(
            serverFailure: (value) => emit(
                UserBlocState.failureState(users: state.users, failure: value)),
            clientFailure: (value) => emit(
                UserBlocState.failureState(users: state.users, failure: value)),
          );
        },
            (r) =>
                emit(UserBlocState.loadedState(users: [...state.users, ...r])));
      },
    );
  }

  Future<void> _update(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(users: state.users));
    event.maybeWhen(
      orElse: () {},
      update: (user) async {
        final leftOrRight = await _repository.update(UserDto.fromDomain(user));
        leftOrRight.fold((l) {
          l.map(
            serverFailure: (value) => emit(
                UserBlocState.failureState(users: state.users, failure: value)),
            clientFailure: (value) => emit(
                UserBlocState.failureState(users: state.users, failure: value)),
          );
        }, (r) => emit(UserBlocState.loadedState(users: state.users)));
      },
    );
  }

  Future<void> _delete(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(users: state.users));
    event.maybeWhen(
      orElse: () {},
      delete: (username) async {
        final leftOrRight = await _repository.delete(username);
        leftOrRight.fold((l) {
          l.map(
            serverFailure: (value) => emit(
                UserBlocState.failureState(users: state.users, failure: value)),
            clientFailure: (value) => emit(
                UserBlocState.failureState(users: state.users, failure: value)),
          );
        }, (r) => emit(UserBlocState.loadedState(users: state.users)));
      },
    );
  }
}
