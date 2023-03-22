import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:ryan_pujo_app/core/infrastructure/remote_response.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';
import 'package:dartz/dartz.dart';

import 'user_repo_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserRemoteDatasourceContract>()])
void main() {
  late MockUserRemoteDatasourceContract remoteDatasourceContract;
  late UserRepositoryContract repository;

  setUp(() {
    remoteDatasourceContract = MockUserRemoteDatasourceContract();
    repository = UserRepo(remmoteDatasource: remoteDatasourceContract);
  });

  group('Register user', () {
    UserDto user = const UserDto(
      fName: "sdsds",
      lName: "Dfsdfsd",
      username: "sdfdsfds",
      email: "sdfs",
      password: "Sdfsffsf",
    );

    group("register user", () {
      test("should return right with user", () async {
        when(remoteDatasourceContract.registerUser(any)).thenAnswer(
            (realInvocation) async => RemoteResponse.withData(user));

        final actual = await repository.registerUser(user);

        expect(actual, equals(right(user.toUser())));
      });

      test("should return left with connection error", () async {
        when(remoteDatasourceContract.registerUser(any)).thenAnswer(
            (realInvocation) async => const RemoteResponse.noConnection());

        final actual = await repository.registerUser(user);

        expect(actual,
            equals(left(const Failure.clientFailure(noConnectionError))));
      });

      test("should return left with userAlreadyexist error", () async {
        when(remoteDatasourceContract.registerUser(any)).thenAnswer(
            (realInvocation) async => const RemoteResponse.userAlreadyExist());

        final actual = await repository.registerUser(user);

        expect(actual,
            equals(left(const Failure.clientFailure(userAlreadyExistError))));
      });

      test("should return left with badRequst error", () async {
        when(remoteDatasourceContract.registerUser(any)).thenAnswer(
            (realInvocation) async => const RemoteResponse.badRequest());

        final actual = await repository.registerUser(user);

        expect(
            actual, equals(left(const Failure.clientFailure(badRequestError))));
      });

      test("should return left with internal error", () async {
        when(remoteDatasourceContract.registerUser(any)).thenAnswer(
            (realInvocation) async => const RemoteResponse.internalError(500));

        final actual = await repository.registerUser(user);

        expect(actual, equals(left(const Failure.serverFailure(500))));
      });
    });
  });

  group("delete user", () {
    test("should return right unit", () async {
      when(remoteDatasourceContract.delete(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.withoutData());

      final actual = await repository.delete("dfdfdf");

      expect(actual, equals(right(unit)));
    });

    test("should return left clientFailure with $noConnectionError", () async {
      when(remoteDatasourceContract.delete(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.noConnection());

      final actual = await repository.delete("ksdkd");

      expect(
          actual, equals(left(const Failure.clientFailure(noConnectionError))));
    });

    test("should return left clientFailure with $badRequestError", () async {
      when(remoteDatasourceContract.delete(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.badRequest());

      final actual = await repository.delete("ksdkd");

      expect(
          actual, equals(left(const Failure.clientFailure(badRequestError))));
    });

    test("should return left serverFailure", () async {
      when(remoteDatasourceContract.delete(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.internalError(500));

      final actual = await repository.delete("ksdkd");

      expect(actual, equals(left(const Failure.serverFailure(500))));
    });
  });

  group("getByUsername", () {
    UserDto user = const UserDto(
      fName: "sdsds",
      lName: "Dfsdfsd",
      username: "sdfdsfds",
      email: "sdfs",
      password: "Sdfsffsf",
    );
    test("should return a user", () async {
      when(remoteDatasourceContract.getByUsername(any))
          .thenAnswer((realInvocation) async => RemoteResponse.withData(user));

      final actual = await repository.getByUsername("ddfdfdf");

      expect(actual, equals(right(user.toUser())));
    });

    test("should return a left with $userNotFoundError", () async {
      when(remoteDatasourceContract.getByUsername(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.noDataFound());

      final actual = await repository.getByUsername("ddfdfdf");

      expect(
          actual, equals(left(const Failure.clientFailure(userNotFoundError))));
    });

    test("should return a left with $noConnectionError", () async {
      when(remoteDatasourceContract.getByUsername(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.noConnection());

      final actual = await repository.getByUsername("ddfdfdf");

      expect(
          actual, equals(left(const Failure.clientFailure(noConnectionError))));
    });

    test("should return a left with $badRequestError", () async {
      when(remoteDatasourceContract.getByUsername(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.badRequest());

      final actual = await repository.getByUsername("ddfdfdf");

      expect(
          actual, equals(left(const Failure.clientFailure(badRequestError))));
    });

    test("should return a internal error", () async {
      when(remoteDatasourceContract.getByUsername(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.internalError(500));

      final actual = await repository.getByUsername("ddfdfdf");

      expect(actual, equals(left(const Failure.serverFailure(500))));
    });
  });

  group("getUsers", () {
    UserDto user = const UserDto(
      fName: "sdsds",
      lName: "Dfsdfsd",
      username: "sdfdsfds",
      email: "sdfs",
      password: "Sdfsffsf",
    );
    UserDto user1 = const UserDto(
      fName: "sdsds",
      lName: "fgfg",
      username: "fgfgft",
      email: "ghghh",
      password: "Sdfsffsf",
    );
    final usersDto = [user, user1];
    final users = usersDto.map((e) => e.toUser()).toList();

    test("should return a list of users", () async {
      when(remoteDatasourceContract.getUsers()).thenAnswer(
          (realInvocation) async => RemoteResponse.withData(usersDto));

      final actual = await repository.getUsers();
      final actualList = actual.getOrElse(() => List.empty());

      expect(actual.isRight(), isTrue);
      expect(actualList, isNotEmpty);
      expect(actualList, equals(users));
    });

    test("should return an empty list of users", () async {
      when(remoteDatasourceContract.getUsers()).thenAnswer(
          (realInvocation) async => const RemoteResponse.noDataFound());

      final actual = await repository.getUsers();
      final actualList = actual.getOrElse(() => List.empty());

      expect(actual.isRight(), isTrue);
      expect(actualList, isEmpty);
      expect(actualList, equals([]));
    });

    test("should return a left with no connection error", () async {
      when(remoteDatasourceContract.getUsers()).thenAnswer(
          (realInvocation) async => const RemoteResponse.noConnection());

      final actual = await repository.getUsers();

      expect(
          actual, equals(left(const Failure.clientFailure(noConnectionError))));
    });

    test("should return a left with badRequest error", () async {
      when(remoteDatasourceContract.getUsers()).thenAnswer(
          (realInvocation) async => const RemoteResponse.badRequest());

      final actual = await repository.getUsers();

      expect(
          actual, equals(left(const Failure.clientFailure(badRequestError))));
    });

    test("should return a left with internal error", () async {
      when(remoteDatasourceContract.getUsers()).thenAnswer(
          (realInvocation) async => const RemoteResponse.internalError(500));

      final actual = await repository.getUsers();

      expect(actual, equals(left(const Failure.serverFailure(500))));
    });
  });

  group("update user", () {
    UserDto user1 = const UserDto(
      fName: "sdsds",
      lName: "fgfg",
      username: "fgfgft",
      email: "ghghh",
      password: "Sdfsffsf",
    );
    test("should return right unit", () async {
      when(remoteDatasourceContract.update(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.withoutData());

      final actual = await repository.update(user1);

      expect(actual, equals(right(unit)));
    });

    test("should return left clientFailure with $noConnectionError", () async {
      when(remoteDatasourceContract.update(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.noConnection());

      final actual = await repository.update(user1);

      expect(
          actual, equals(left(const Failure.clientFailure(noConnectionError))));
    });

    test("should return left clientFailure with $badRequestError", () async {
      when(remoteDatasourceContract.update(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.badRequest());

      final actual = await repository.update(user1);

      expect(
          actual, equals(left(const Failure.clientFailure(badRequestError))));
    });

    test("should return left serverFailure", () async {
      when(remoteDatasourceContract.update(any)).thenAnswer(
          (realInvocation) async => const RemoteResponse.internalError(500));

      final actual = await repository.update(user1);

      expect(actual, equals(left(const Failure.serverFailure(500))));
    });
  });
}
