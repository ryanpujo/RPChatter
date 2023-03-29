import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_state.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseAuth>(),
  MockSpec<User>(),
  MockSpec<UserCredential>(),
  MockSpec<UserRepositoryContract>()
])
void main() {
  late MockFirebaseAuth authenticator;
  late MockUser mockUser;
  late MockUserCredential mockUserCredential;
  late MockUserRepositoryContract mockUserRepository;

  setUp(() {
    authenticator = MockFirebaseAuth();
    mockUser = MockUser();
    mockUserCredential = MockUserCredential();
    mockUserRepository = MockUserRepositoryContract();
  });

  AuthBloc builder() => AuthBloc(authenticator, mockUserRepository)
    ..add(const AuthEvent.checkAuthentication());

  group("isAuthenticated event", () {
    blocTest(
      "should emit unauthenticated",
      build: builder,
      act: (bloc) => bloc.add(const AuthEvent.isAuthenticated(null)),
      expect: () => <AuthState>[const AuthState.unAuthenticated()],
    );

    blocTest(
      "should emit authenticated",
      build: builder,
      setUp: () {
        when(mockUser.emailVerified).thenReturn(true);
      },
      act: (bloc) => bloc.add(AuthEvent.isAuthenticated(mockUser)),
      expect: () => [const AuthState.authenticated()],
    );
  });
  UserDto user = const UserDto(
    fName: "sdsds",
    lName: "Dfsdfsd",
    username: "sdfdsfds",
    email: "sdfs",
    password: "Sdfsffsf",
  );

  group("sign in event", () {
    blocTest(
      "should emit failure",
      build: builder,
      setUp: () {
        when(
          authenticator.signInWithEmailAndPassword(
            email: anyNamed("email"),
            password: anyNamed("password"),
          ),
        ).thenThrow(FirebaseAuthException(code: "invalid-email"));
        when(mockUserRepository.getByUsername(any)).thenAnswer(
          (realInvocation) async => right(user.toUser()),
        );
      },
      act: (bloc) => bloc.add(const AuthEvent.signIn()),
      expect: () => [const AuthState.failure("invalid-email")],
    );

    blocTest(
      "should emit authenticated from username",
      build: builder,
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
        when(mockUserRepository.getByUsername(any)).thenAnswer(
          (realInvocation) async => right(user.toUser()),
        );
      },
      act: (bloc) => bloc.add(const AuthEvent.signIn()),
      verify: (bloc) {
        verify(mockUserRepository.getByUsername(any)).called(1);
      },
      expect: () => [const AuthState.authenticated()],
    );

    blocTest(
      "should emit authenticated from email",
      build: builder,
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
      act: (bloc) => bloc.add(const AuthEvent.signIn()),
      verify: (bloc) {
        verifyZeroInteractions(mockUserRepository);
      },
      expect: () => [const AuthState.authenticated()],
    );
    blocTest(
      "should emit unverified from username",
      build: builder,
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
        when(mockUserRepository.getByUsername(any)).thenAnswer(
          (realInvocation) async => right(user.toUser()),
        );
      },
      act: (bloc) => bloc.add(const AuthEvent.signIn()),
      verify: (bloc) {
        verify(mockUserRepository.getByUsername(any)).called(1);
      },
      expect: () => [const AuthState.unVerified()],
    );

    blocTest(
      "should emit unverified from email",
      build: builder,
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
      act: (bloc) => bloc.add(const AuthEvent.signIn()),
      verify: (bloc) {
        verifyZeroInteractions(mockUserRepository);
      },
      expect: () => [const AuthState.unVerified()],
    );
  });

  group("sign out", () {
    blocTest(
      "should emit unAuthenticated",
      build: builder,
      act: (bloc) => bloc.add(const AuthEvent.signOut()),
      verify: (bloc) => verify(authenticator.signOut()).called(1),
      expect: () => [],
    );
  });
}
