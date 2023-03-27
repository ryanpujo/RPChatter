import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authenticator, this._userRepository)
      : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        isAuthenticated: (isAuthenticatedEvent) async =>
            await _isAuthenticated(isAuthenticatedEvent, emit),
        signOut: (value) async => await _signOut(event, emit),
        signIn: (value) async => await _signIn(event, emit),
        verifyingEmail: (value) {
          final user = _authenticator.currentUser;
          if (user!.emailVerified) {
            emit(const AuthState.authenticated());
          }
          emit(const AuthState.unVerified());
        },
        checkAuthentication: (value) {
          firebaseSubscription = _authenticator.userChanges().listen((user) {
            add(AuthEvent.isAuthenticated(user));
          });
        },
      );
    });
  }

  late final StreamSubscription<User?> firebaseSubscription;
  final FirebaseAuth _authenticator;
  final UserRepositoryContract _userRepository;
  final formGroup = FormGroup({
    "username": FormControl(validators: [Validators.required]),
    "password": FormControl(validators: [Validators.required]),
  });

  Future<void> _isAuthenticated(
      AuthEvent event, Emitter<AuthState> emit) async {
    event.maybeWhen(
      orElse: () {},
      isAuthenticated: (user) {
        if (user != null) {
          emit(const AuthState.authenticated());
          return;
        }
        emit(const AuthState.unAuthenticated());
      },
    );
  }

  Future<void> _signOut(AuthEvent event, Emitter<AuthState> emit) async {
    await _authenticator.signOut();
  }

  Future<void> _signIn(AuthEvent event, Emitter<AuthState> emit) async {
    await event.maybeMap(
      orElse: () {},
      signIn: (value) async {
        String username = formGroup.control("username").value;
        String password = formGroup.control("password").value;
        formGroup.control("username").value = "";
        formGroup.control("password").value = "";
        try {
          emit(const AuthState.loading());
          if (!EmailValidator.validate(formGroup.control("username").value)) {
            final email = await getEmail(formGroup.control("username").value);
            if (!EmailValidator.validate(email)) {
              emit(AuthState.failure(email));
              return;
            }
            username = email;
          }
          final _ = await _authenticator.signInWithEmailAndPassword(
            email: username,
            password: password,
          );
        } on FirebaseAuthException catch (e) {
          emit(AuthState.failure(e.code));
        }
      },
    );
  }

  Future<String> getEmail(String username) async {
    final leftOrRight = await _userRepository.getByUsername(username);
    return leftOrRight.fold((l) {
      return l.map(
        serverFailure: (value) => value.errorCode.toString(),
        clientFailure: (value) => value.message,
      );
    }, (r) => r.email);
  }

  @override
  Future<void> close() {
    formGroup.dispose();
    firebaseSubscription.cancel();
    return super.close();
  }
}
