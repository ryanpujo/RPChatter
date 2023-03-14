import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_state.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateNiceMocks(
    [MockSpec<FirebaseAuth>(), MockSpec<User>(), MockSpec<UserCredential>()])
void main() {
  late MockFirebaseAuth authenticator;
  late MockUser mockUser;
  late MockUserCredential mockUserCredential;

  setUp(() {
    authenticator = MockFirebaseAuth();
    mockUser = MockUser();
    mockUserCredential = MockUserCredential();
  });

  group("isAuthenticated event", () {
    blocTest(
      "should emit unauthenticated",
      build: () => AuthBloc(authenticator),
      setUp: () => when(authenticator.currentUser).thenReturn(null),
      act: (bloc) => bloc.add(const AuthEvent.isAuthenticated()),
      expect: () => <AuthState>[const AuthState.unAuthenticated()],
    );

    blocTest(
      "should emit authenticated",
      build: () => AuthBloc(authenticator),
      setUp: () {
        when(mockUser.emailVerified).thenReturn(true);
        when(authenticator.currentUser).thenReturn(mockUser);
      },
      act: (bloc) => bloc.add(const AuthEvent.isAuthenticated()),
      expect: () => [const AuthState.authenticated()],
    );

    blocTest(
      "should emit unverified",
      build: () => AuthBloc(authenticator),
      setUp: () {
        when(mockUser.emailVerified).thenReturn(false);
        when(authenticator.currentUser).thenReturn(mockUser);
      },
      act: (bloc) => bloc.add(const AuthEvent.isAuthenticated()),
      expect: () => [const AuthState.unVerified()],
    );
  });

  group("sign in event", () {
    blocTest(
      "should emit failure",
      build: () => AuthBloc(authenticator),
      setUp: () {
        when(
          authenticator.signInWithEmailAndPassword(
            email: anyNamed("email"),
            password: anyNamed("password"),
          ),
        ).thenThrow(FirebaseAuthException(code: "invalid-email"));
      },
      act: (bloc) => bloc.add(const AuthEvent.signIn("fddf", "dfddd")),
      expect: () => [const AuthState.failure("invalid-email")],
    );

    blocTest(
      "should emit authenticated",
      build: () => AuthBloc(authenticator),
      setUp: () {
        when(
          authenticator.signInWithEmailAndPassword(
            email: anyNamed("email"),
            password: anyNamed("password"),
          ),
        ).thenAnswer(
          (realInvocation) async => mockUserCredential,
        );
        when(mockUserCredential.user).thenReturn(mockUser);
        when(mockUser.emailVerified).thenReturn(true);
      },
      act: (bloc) => bloc.add(const AuthEvent.signIn("fddf", "dfddd")),
      expect: () => [const AuthState.authenticated()],
    );
    blocTest(
      "should emit unverified",
      build: () => AuthBloc(authenticator),
      setUp: () {
        when(
          authenticator.signInWithEmailAndPassword(
            email: anyNamed("email"),
            password: anyNamed("password"),
          ),
        ).thenAnswer(
          (realInvocation) async => mockUserCredential,
        );
        when(mockUserCredential.user).thenReturn(mockUser);
        when(mockUser.emailVerified).thenReturn(false);
      },
      act: (bloc) => bloc.add(const AuthEvent.signIn("fddf", "dfddd")),
      expect: () => [const AuthState.unVerified()],
    );
  });

  group("sign out", () {
    blocTest(
      "should emit unAuthenticated",
      build: () => AuthBloc(authenticator),
      act: (bloc) => bloc.add(const AuthEvent.signOut()),
      verify: (bloc) => verify(authenticator.signOut()).called(1),
      expect: () => [const AuthState.unAuthenticated()],
    );
  });
}
