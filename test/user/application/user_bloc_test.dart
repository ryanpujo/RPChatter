import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as fire_auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_event.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:bloc_test/bloc_test.dart';

import 'user_bloc_test.mocks.dart';

@GenerateNiceMocks(
    [MockSpec<UserRepositoryContract>(), MockSpec<fire_auth.FirebaseAuth>()])
void main() {
  late MockUserRepositoryContract repository;
  late MockFirebaseAuth auth;

  setUp(() {
    repository = MockUserRepositoryContract();
    auth = MockFirebaseAuth();
  });
  UserBlocBloc builder() => UserBlocBloc(repository, auth);
  User user = const User(
    fName: "sdsds",
    lName: "Dfsdfsd",
    username: "sdfdsfds",
    email: "sdfs",
    password: "Sdfsffsf",
  );

  group("register event", () {
    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, serverFailure].',
      build: builder,
      setUp: () {
        when(repository.registerUser(any)).thenAnswer(
            (realInvocation) async => left(const Failure.serverFailure(400)));
      },
      act: (bloc) {
        bloc.add(const UserBlocEvent.register());
      },
      expect: () => const <UserBlocState>[
        UserBlocState.loadingState(user: null, users: []),
        UserBlocState.failureState(
            users: [], failure: Failure.serverFailure(400)),
      ],
    );

    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, clientFailure].',
      build: builder,
      setUp: () {
        when(repository.registerUser(any)).thenAnswer((realInvocation) async =>
            left(const Failure.clientFailure("message")));
      },
      act: (bloc) {
        bloc.add(const UserBlocEvent.register());
      },
      expect: () => const <UserBlocState>[
        UserBlocState.loadingState(users: []),
        UserBlocState.failureState(
            users: [], failure: Failure.clientFailure("message")),
      ],
    );

    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, loadedState].',
      build: builder,
      setUp: () {
        when(repository.registerUser(any))
            .thenAnswer((realInvocation) async => right(user));
      },
      act: (bloc) {
        bloc.add(const UserBlocEvent.register());
      },
      expect: () => <UserBlocState>[
        const UserBlocState.loadingState(user: null, users: []),
        UserBlocState.loadedState(users: [], user: user),
      ],
    );
  });

  group("getByUsername", () {
    blocTest(
      "should emit loaded state",
      build: builder,
      setUp: () {
        when(repository.getByUsername(any))
            .thenAnswer((realInvocation) async => right(user));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.getByUsername("username")),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        UserBlocState.loadedState(users: [], user: user)
      ],
    );

    blocTest(
      "should emit failure state with client failure",
      build: builder,
      setUp: () {
        when(repository.getByUsername(any)).thenAnswer((realInvocation) async =>
            left(const Failure.clientFailure("message")));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.getByUsername("username")),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.clientFailure("message"))
      ],
    );

    blocTest(
      "should emit failure state with server failure",
      build: builder,
      setUp: () {
        when(repository.getByUsername(any)).thenAnswer(
            (realInvocation) async => left(const Failure.serverFailure(500)));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.getByUsername("username")),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.serverFailure(500))
      ],
    );
  });

  group("getUsers", () {
    final users = [user, user];

    blocTest(
      "should emit loaded state with users",
      build: builder,
      setUp: () {
        when(repository.getUsers())
            .thenAnswer((realInvocation) async => right(users));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.getUsers()),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        UserBlocState.loadedState(users: users)
      ],
    );

    blocTest(
      "should emit failure state with clientfailure",
      build: builder,
      setUp: () {
        when(repository.getUsers()).thenAnswer((realInvocation) async =>
            left(const Failure.clientFailure("message")));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.getUsers()),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.clientFailure("message"))
      ],
    );

    blocTest(
      "should emit failure state with serverfailure",
      build: builder,
      setUp: () {
        when(repository.getUsers()).thenAnswer(
            (realInvocation) async => left(const Failure.serverFailure(500)));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.getUsers()),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.serverFailure(500))
      ],
    );
  });

  group("update", () {
    blocTest(
      "should emit loaded state",
      build: builder,
      setUp: () {
        when(repository.update(any))
            .thenAnswer((realInvocation) async => right(unit));
      },
      act: (bloc) => bloc.add(UserBlocEvent.update(user)),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.loadedState(users: [])
      ],
    );

    blocTest(
      "should emit failure state with clientfailure",
      build: builder,
      setUp: () {
        when(repository.update(any)).thenAnswer((realInvocation) async =>
            left(const Failure.clientFailure("message")));
      },
      act: (bloc) => bloc.add(UserBlocEvent.update(user)),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.clientFailure("message"))
      ],
    );

    blocTest(
      "should emit failure state with serverfailure",
      build: builder,
      setUp: () {
        when(repository.update(any)).thenAnswer(
            (realInvocation) async => left(const Failure.serverFailure(500)));
      },
      act: (bloc) => bloc.add(UserBlocEvent.update(user)),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.serverFailure(500))
      ],
    );
  });

  group("delete", () {
    blocTest(
      "should emit failure state with clientfailure",
      build: builder,
      setUp: () {
        when(repository.delete(any)).thenAnswer((realInvocation) async =>
            left(const Failure.clientFailure("message")));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.delete("user")),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.clientFailure("message"))
      ],
    );

    blocTest(
      "should emit failure state with servertfailure",
      build: builder,
      setUp: () {
        when(repository.delete(any)).thenAnswer(
            (realInvocation) async => left(const Failure.serverFailure(500)));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.delete("user")),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.failureState(
            users: [], failure: Failure.serverFailure(500))
      ],
    );

    blocTest(
      "should emit loaded state",
      build: builder,
      setUp: () {
        when(repository.delete(any))
            .thenAnswer((realInvocation) async => right(unit));
      },
      act: (bloc) => bloc.add(const UserBlocEvent.delete("user")),
      expect: () => [
        const UserBlocState.loadingState(users: []),
        const UserBlocState.loadedState(users: [])
      ],
    );
  });
}
