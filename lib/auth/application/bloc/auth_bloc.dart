import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      );
    });
  }

  final FirebaseAuth _authenticator;
  final UserRepositoryContract _userRepository;

  Future<void> _isAuthenticated(
      AuthEvent event, Emitter<AuthState> emit) async {
    final user = _authenticator.currentUser;
    if (user != null) {
      if (!user.emailVerified) {
        emit(const AuthState.unVerified());
        return;
      }
      emit(const AuthState.authenticated());
      return;
    }
    emit(const AuthState.unAuthenticated());
  }

  Future<void> _signOut(AuthEvent event, Emitter<AuthState> emit) async {
    await _authenticator.signOut();
    emit(const AuthState.unAuthenticated());
  }

  Future<void> _signIn(AuthEvent event, Emitter<AuthState> emit) async {
    await event.maybeMap(
      orElse: () {},
      signIn: (value) async {
        try {
          emit(const AuthState.loading());
          if (EmailValidator.validate(value.username)) {
            final cred = await _authenticator.signInWithEmailAndPassword(
              email: value.username,
              password: value.password,
            );
            if (cred.user!.emailVerified) {
              emit(const AuthState.authenticated());
              return;
            }
            emit(const AuthState.unVerified());
          } else {
            final res = await _userRepository.getByUsername(value.username);
            await res.fold(
              (l) {
                l.maybeMap(
                  orElse: () {},
                  clientFailure: (value) =>
                      emit(AuthState.failure(value.message)),
                );
              },
              (r) async {
                final cred = await _authenticator.signInWithEmailAndPassword(
                  email: r.email,
                  password: value.password,
                );
                if (cred.user!.emailVerified) {
                  emit(const AuthState.authenticated());
                  return;
                }
                emit(const AuthState.unVerified());
              },
            );
          }
        } on FirebaseAuthException catch (e) {
          emit(AuthState.failure(e.code));
        }
      },
    );
  }
}
