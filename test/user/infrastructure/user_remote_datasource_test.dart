import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/failed_precondition_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/user_exist_exception.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

import 'user_remote_datasource_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
void main() {
  late MockDio dio;
  late UserRemoteDatasourceContract dataSource;

  setUp(() {
    dio = MockDio();
    dataSource = UserRemoteDatasource(dio);
  });

  group("register user", () {
    UserDto user = const UserDto(
      fName: "sdsds",
      lName: "Dfsdfsd",
      username: "sdfdsfds",
      email: "sdfs",
      password: "Sdfsffsf",
    );
    test("should return an id for succesful call", () async {
      when(dio.post(any, data: anyNamed("data"))).thenAnswer(
          (realInvocation) async => Response(
              requestOptions: RequestOptions(),
              data: {"data": 2},
              statusCode: 201));

      final actual = await dataSource.registerUser(user);

      expect(actual, 2);
    });

    test("should throw alreadyexistException", () async {
      when(dio.post(any, data: anyNamed("data"))).thenAnswer(
          (realInvocation) async => Response(
              requestOptions: RequestOptions(),
              data: {"code": 6},
              statusCode: 400));

      final result = dataSource.registerUser;

      expect(() => result(user),
          throwsA(const TypeMatcher<UserAlreadyExistException>()));
    });

    test("should throw failed precondition exception", () async {
      when(dio.post(any, data: anyNamed("data"))).thenAnswer(
          (realInvocation) async => Response(
              requestOptions: RequestOptions(),
              data: {"code": 3},
              statusCode: 400));

      final result = dataSource.registerUser;

      expect(() => result(user),
          throwsA(const TypeMatcher<FailePreconditionException>()));
    });

    test("should throw socket exception", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(DioError(
          requestOptions: RequestOptions(),
          type: DioErrorType.connectionError,
          error: const SocketException("no connection")));

      final result = dataSource.registerUser;

      expect(() => result(user), throwsA(const TypeMatcher<SocketException>()));
    });

    test("should throw httpexception", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(DioError(
          requestOptions: RequestOptions(),
          type: DioErrorType.badResponse,
          response: Response(requestOptions: RequestOptions())));

      final result = dataSource.registerUser;

      expect(() => result(user), throwsA(const TypeMatcher<HttpException>()));
    });

    test("should throw restapiexception", () async {
      when(dio.post(any, data: anyNamed("data"))).thenAnswer(
          (realInvocation) async => Response(
              requestOptions: RequestOptions(),
              data: {"code": 6},
              statusCode: 500));

      final result = dataSource.registerUser;

      expect(
          () => result(user), throwsA(const TypeMatcher<RestApiException>()));
    });
  });
}
