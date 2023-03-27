import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:ryan_pujo_app/init.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

import '../../domain/user.dart';
import 'user_bloc_event.dart';

class UserBlocBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBlocBloc(this._repository, this._firebaseAuth)
      : super(const UserBlocState.initialState(user: null, users: [])) {
    on<UserBlocEvent>((event, emit) async {
      await event.map(
        register: (event) async => await _registerUser(event, emit),
        getByUsername: (event) async => await _getByUsername(event, emit),
        getUsers: (event) async => await _getUsers(event, emit),
        update: (event) async => await _update(event, emit),
        delete: (event) async => await _delete(event, emit),
      );
    });
  }
  final UserRepositoryContract _repository;
  final auth.FirebaseAuth _firebaseAuth;

  static Future<Map<String, dynamic>?> _uniqueUsername(
      AbstractControl<dynamic> control) async {
    UserRepositoryContract repository = locator<UserRepositoryContract>();
    final error = {"username already been used": false};
    final isUnique = await repository.isUsernameAvailable(control.value);
    if (!isUnique) {
      control.markAllAsTouched();
      return error;
    }
    return null;
  }

  final formGroup = FormGroup({
    "fname": FormControl<String>(validators: [Validators.required]),
    "lname": FormControl<String>(validators: [Validators.required]),
    "username": FormControl<String>(
      validators: [Validators.required],
      asyncValidators: [_uniqueUsername],
    ),
    "email": FormControl<String>(validators: [
      Validators.email,
      Validators.required,
    ]),
    "password": FormControl<String>(validators: [Validators.required])
  });

  Future<void> _registerUser(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(user: state.user, users: state.users));
    await event.maybeWhen(
      orElse: () {},
      register: () async {
        try {
          await _firebaseAuth.createUserWithEmailAndPassword(
            email: formGroup.control("email").value,
            password: formGroup.control("password").value,
          );
          final user = User(
            fName: formGroup.control("fname").value,
            lName: formGroup.control("lname").value,
            username: formGroup.control("username").value,
            email: formGroup.control("email").value,
            password: formGroup.control("password").value,
          );
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
        } on auth.FirebaseAuthException catch (e) {
          emit(UserBlocState.failureState(
              users: state.users, failure: Failure.clientFailure(e.code)));
        }
      },
    );
  }

  Future<void> _getByUsername(
    UserBlocEvent event,
    Emitter<UserBlocState> emit,
  ) async {
    emit(UserBlocState.loadingState(users: state.users));
    await event.maybeWhen(
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
          (r) {
            emit(UserBlocState.loadedState(users: state.users, user: r));
          },
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

  @override
  Future<void> close() {
    formGroup.dispose();
    return super.close();
  }
}
