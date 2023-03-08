import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
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

    test("should return right with int", () async {
      when(remoteDatasourceContract.registerUser(any))
          .thenAnswer((realInvocation) async => user);

      final actual = await repository.registerUser(user);

      expect(actual, equals(right(user.toUser())));
    });

    group("should return server failure union", () {
      test("when RestApiException thrown", () async {
        when(remoteDatasourceContract.registerUser(any))
            .thenThrow(const RestApiException(400, "nyamuk"));

        final actual = await repository.registerUser(user);

        expect(
            actual, equals(left(const Failure.serverFailure("nyamuk", 400))));
      });
    });
  });
}
