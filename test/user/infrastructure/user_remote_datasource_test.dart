import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/core/infrastructure/remote_response.dart';
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
    test("should return a registered user", () async {
      when(dio.post(any, data: anyNamed("data"))).thenAnswer(
          (realInvocation) async => Response(
              requestOptions: RequestOptions(),
              data: {"data": user.toJson()},
              statusCode: 201));

      final actual = await dataSource.registerUser(user);

      expect(actual, equals(RemoteResponse.withData(user)));
    });

    test("should return noConnection response", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(DioError(
          requestOptions: RequestOptions(),
          type: DioErrorType.connectionError,
          error: const SocketException("no connection")));

      final result = await dataSource.registerUser(user);

      expect(result, equals(const RemoteResponse<UserDto>.noConnection()));
    });

    test("should return a userAlreadyExust response", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(
        DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: {
              "error": "got an error",
              "code": 6,
            },
            statusCode: 400,
          ),
        ),
      );

      final result = await dataSource.registerUser(user);

      expect(result, equals(const RemoteResponse<UserDto>.userAlreadyExist()));
    });

    test("should return a badRequest response", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(
        DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: {"error": "got an error"},
            statusCode: 400,
          ),
        ),
      );

      final result = await dataSource.registerUser(user);

      expect(result, equals(const RemoteResponse<UserDto>.badRequest()));
    });

    test("should return an internalError response", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(
        DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            data: {"error": "got an error"},
            statusCode: 500,
          ),
        ),
      );

      final result = await dataSource.registerUser(user);

      expect(result, equals(const RemoteResponse<UserDto>.internalError(500)));
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

    test("should return an existing user", () async {
      when(dio.get(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": user.toJson()}));

      final actual = await dataSource.getByUsername("");

      expect(actual, RemoteResponse.withData(user));
    });

    test("should return NoConnection response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("no internet"),
        type: DioErrorType.connectionError,
      ));

      final actual = await dataSource.getByUsername("");

      expect(actual, equals(const RemoteResponse<UserDto>.noConnection()));
    });

    test("should return NoDataFound response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 400,
          data: {"code": 5},
        ),
      ));

      final actual = await dataSource.getByUsername("");

      expect(actual, equals(const RemoteResponse<UserDto>.noDataFound()));
    });

    test("should return BadRequest response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 400,
          data: {"error": "got an error"},
        ),
      ));

      final actual = await dataSource.getByUsername("");

      expect(actual, equals(const RemoteResponse<UserDto>.badRequest()));
    });

    test("should return internalError response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 500,
          data: {"error": "got an error"},
        ),
      ));

      final actual = await dataSource.getByUsername("");

      expect(actual, equals(const RemoteResponse<UserDto>.internalError(500)));
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
    final users = [user, user];
    test("should return a list of userdto", () async {
      when(dio.get(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": users}));

      final actual = await dataSource.getUsers();

      expect(actual, equals(RemoteResponse.withData(users)));
    });

    test("should return noDataFound", () async {
      when(dio.get(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": []}));

      final actual = await dataSource.getUsers();

      expect(actual, equals(const RemoteResponse<List<UserDto>>.noDataFound()));
    });

    test("should return no connection error", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("no connection"),
      ));

      final actual = await dataSource.getUsers();

      expect(
          actual, equals(const RemoteResponse<List<UserDto>>.noConnection()));
    });

    test("should return bad request error", () async {
      when(dio.get(any)).thenThrow(DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 400,
          )));

      final actual = await dataSource.getUsers();

      expect(actual, equals(const RemoteResponse<List<UserDto>>.badRequest()));
    });

    test("should return  internalError", () async {
      when(dio.get(any)).thenThrow(DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 500,
          )));

      final actual = await dataSource.getUsers();

      expect(actual,
          equals(const RemoteResponse<List<UserDto>>.internalError(500)));
    });
  });

  group("update", () {
    UserDto user = const UserDto(
      fName: "sdsds",
      lName: "Dfsdfsd",
      username: "sdfdsfds",
      email: "sdfs",
      password: "Sdfsffsf",
    );
    test("should retutn a withoutData response", () async {
      when(dio.patch(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": "updated"}));

      final actual = await dataSource.update(user);

      expect(actual, equals(const RemoteResponse<Unit>.withoutData()));
    });

    test("should return a noConnection error", () async {
      when(dio.patch(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("connection error"),
      ));

      final actual = await dataSource.update(user);

      expect(actual, const RemoteResponse<Unit>.noConnection());
    });

    test("should return a badRequst error", () async {
      when(dio.patch(any)).thenThrow(DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 400,
          )));

      final actual = await dataSource.update(user);

      expect(actual, const RemoteResponse<Unit>.badRequest());
    });

    test("should return a internalError", () async {
      when(dio.patch(any)).thenThrow(DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 500,
          )));

      final actual = await dataSource.update(user);

      expect(actual, const RemoteResponse<Unit>.internalError(500));
    });
  });

  group("delete user", () {
    test("should retutn a withoutData response", () async {
      when(dio.delete(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": "deleted"}));

      final actual = await dataSource.delete("ddsdsd");

      expect(actual, equals(const RemoteResponse<Unit>.withoutData()));
    });

    test("should return a noConnection error", () async {
      when(dio.delete(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("connection error"),
      ));

      final actual = await dataSource.delete("user");

      expect(actual, equals(const RemoteResponse<Unit>.noConnection()));
    });

    test("should return a badRequst error", () async {
      when(dio.delete(any)).thenThrow(DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 400,
          )));

      final actual = await dataSource.delete("user");

      expect(actual, equals(const RemoteResponse<Unit>.badRequest()));
    });

    test("should return a internalError", () async {
      when(dio.delete(any)).thenThrow(DioError(
          requestOptions: RequestOptions(),
          response: Response(
            requestOptions: RequestOptions(),
            statusCode: 500,
          )));

      final actual = await dataSource.delete("user");

      expect(actual, equals(const RemoteResponse<Unit>.internalError(500)));
    });
  });
}
