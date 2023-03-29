import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();
  const factory AuthEvent.isAuthenticated(User? user) = _isAuthenticated;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.signIn() = _SignIn;
  const factory AuthEvent.checkAuthentication() = _CheckAuthentication;
}
