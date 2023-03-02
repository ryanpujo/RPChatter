import 'package:dartz/dartz.dart';
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

@GenerateNiceMocks([MockSpec<UserRepositoryContract>()])
void main() {
  late MockUserRepositoryContract repository;

  setUp(() {
    repository = MockUserRepositoryContract();
  });

  group("register event", () {
    User user = const User(
      fName: "sdsds",
      lName: "Dfsdfsd",
      username: "sdfdsfds",
      email: "sdfs",
      password: "Sdfsffsf",
    );
    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, serverFailure].',
      build: () => UserBlocBloc(repository),
      act: (bloc) {
        bloc.add(RegisterEvent(user));
        when(repository.registerUser(any)).thenAnswer((realInvocation) async =>
            left(const Failure.serverFailure("message")));
      },
      expect: () => const <UserBlocState>[
        UserBlocState.loadingState(user: null, users: []),
        UserBlocState.failureState(
            users: [], failure: Failure.serverFailure("message")),
      ],
    );

    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, userAlreadyExist].',
      build: () => UserBlocBloc(repository),
      act: (bloc) {
        bloc.add(RegisterEvent(user));
        when(repository.registerUser(any)).thenAnswer(
            (realInvocation) async => left(const Failure.userAlreadyExist()));
      },
      expect: () => const <UserBlocState>[
        UserBlocState.loadingState(user: null, users: []),
        UserBlocState.failureState(
            users: [], failure: Failure.userAlreadyExist()),
      ],
    );

    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, noInternetConnection].',
      build: () => UserBlocBloc(repository),
      act: (bloc) {
        bloc.add(RegisterEvent(user));
        when(repository.registerUser(any)).thenAnswer((realInvocation) async =>
            left(const Failure.noInternetConnection()));
      },
      expect: () => const <UserBlocState>[
        UserBlocState.loadingState(user: null, users: []),
        UserBlocState.failureState(
            users: [], failure: Failure.noInternetConnection()),
      ],
    );

    blocTest<UserBlocBloc, UserBlocState>(
      'should emits [loadingState, loadedState].',
      build: () => UserBlocBloc(repository),
      act: (bloc) {
        bloc.add(RegisterEvent(user));
        when(repository.registerUser(any))
            .thenAnswer((realInvocation) async => right(1));
      },
      expect: () => const <UserBlocState>[
        UserBlocState.loadingState(user: null, users: []),
        UserBlocState.loadedState(users: []),
      ],
    );
  });
}
