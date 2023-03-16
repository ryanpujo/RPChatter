import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
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
    test("should return an id for succesful call", () async {
      when(dio.post(any, data: anyNamed("data"))).thenAnswer(
          (realInvocation) async => Response(
              requestOptions: RequestOptions(),
              data: {"data": user.toJson()},
              statusCode: 201));

      final actual = await dataSource.registerUser(user);

      expect(actual, equals(user));
    });

    test("should throw socket exception", () async {
      when(dio.post(any, data: anyNamed("data"))).thenThrow(DioError(
          requestOptions: RequestOptions(),
          type: DioErrorType.connectionError,
          error: const SocketException("no connection")));

      final result = dataSource.registerUser;

      expect(() => result(user), throwsA(const TypeMatcher<SocketException>()));
    });

    test("should throw RestApiException", () {
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

      final result = dataSource.registerUser;

      expect(
          () => result(user), throwsA(const TypeMatcher<RestApiException>()));
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

      actual.map(
        noConnection: (value) {},
        withData: (value) {
          expect(value, isNotNull);
          expect(value.data, equals(user));
        },
        noDataFound: (value) {},
        badRequest: (value) {},
      );
    });

    test("should return NoConnection response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("no internet"),
        type: DioErrorType.connectionError,
      ));

      final actual = await dataSource.getByUsername("");

      actual.map(
        noConnection: (value) {
          expect(value, isNotNull);
        },
        withData: (value) {},
        noDataFound: (value) {},
        badRequest: (value) {},
      );
    });

    test("should return NoDataFound response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        response: Response(
          requestOptions: RequestOptions(),
          data: {"code": 5},
        ),
      ));

      final actual = await dataSource.getByUsername("");

      actual.map(
        noConnection: (value) {},
        withData: (value) {},
        noDataFound: (value) {
          expect(value, isNotNull);
        },
        badRequest: (value) {},
      );
    });

    test("should return BadRequest response", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        response: Response(
          requestOptions: RequestOptions(),
          data: {"error": "got an error"},
        ),
      ));

      final actual = await dataSource.getByUsername("");

      actual.map(
        noConnection: (value) {},
        withData: (value) {},
        noDataFound: (value) {},
        badRequest: (value) {
          expect(value, isNotNull);
        },
      );
    });
  });

  group("getUser", () {
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

      actual.maybeMap(
        orElse: () {},
        withData: (value) {
          expect(value.data, equals(users));
        },
      );
    });

    test("should return no connection error", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("no connection"),
      ));

      final response = await dataSource.getUsers();

      response.maybeMap(
        orElse: () {},
        noConnection: (value) {
          expect(value, isA<NoConnection>());
        },
      );
    });

    test("should return bad request error", () async {
      when(dio.get(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
      ));

      final response = await dataSource.getUsers();

      response.maybeMap(
        orElse: () {},
        badRequest: (value) {
          expect(value, isNotNull);
          expect(value, isA<BadRequest>());
        },
      );
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
    test("should retutn a string", () async {
      when(dio.patch(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": "updated"}));

      final response = await dataSource.update(user);

      response.maybeMap(
        orElse: () {},
        withData: (value) {
          expect(value.data, equals("updated"));
        },
      );
    });

    test("should return a noConnection error", () async {
      when(dio.patch(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("connection error"),
      ));

      final response = await dataSource.update(user);

      response.maybeMap(
        orElse: () {},
        noConnection: (value) {
          expect(value, isNotNull);
          expect(value, isA<NoConnection>());
        },
      );
    });

    test("should return a badRequst error", () async {
      when(dio.patch(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
      ));

      final response = await dataSource.update(user);

      response.maybeMap(
        orElse: () {},
        badRequest: (value) {
          expect(value, isNotNull);
          expect(value, isA<BadRequest>());
        },
      );
    });
  });

  group("deleter", () {
    test("should retutn a string", () async {
      when(dio.delete(any)).thenAnswer((realInvocation) async => Response(
          requestOptions: RequestOptions(),
          statusCode: 200,
          data: {"data": "deleted"}));

      final response = await dataSource.delete("ddsdsd");

      response.maybeMap(
        orElse: () {},
        withData: (value) {
          expect(value.data, equals("deleted"));
        },
      );
    });

    test("should return a noConnection error", () async {
      when(dio.delete(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
        error: const SocketException("connection error"),
      ));

      final response = await dataSource.delete("user");

      response.maybeMap(
        orElse: () {},
        noConnection: (value) {
          expect(value, isNotNull);
          expect(value, isA<NoConnection>());
        },
      );
    });

    test("should return a badRequst error", () async {
      when(dio.delete(any)).thenThrow(DioError(
        requestOptions: RequestOptions(),
      ));

      final response = await dataSource.delete("user");

      response.maybeMap(
        orElse: () {},
        badRequest: (value) {
          expect(value, isNotNull);
          expect(value, isA<BadRequest>());
        },
      );
    });
  });
}
