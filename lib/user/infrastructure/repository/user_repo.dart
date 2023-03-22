import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

const noConnectionError = "no internet connection";
const badRequestError = "bad request";
const unknownError = "unknown failure";
const userNotFoundError = "user not found";
const userAlreadyExistError = "user already exist";

class UserRepo implements UserRepositoryContract {
  final UserRemoteDatasourceContract _remmoteDatasource;

  UserRepo({required UserRemoteDatasourceContract remmoteDatasource})
      : _remmoteDatasource = remmoteDatasource;

  @override
  Future<Either<Failure, User>> registerUser(UserDto dto) async {
    final result = await _remmoteDatasource.registerUser(dto);
    return result.maybeMap(
      orElse: () => left(const Failure.serverFailure(500)),
      internalError: (value) => left(Failure.serverFailure(value.code)),
      badRequest: (value) => left(const Failure.clientFailure(badRequestError)),
      noConnection: (value) =>
          left(const Failure.clientFailure(noConnectionError)),
      userAlreadyExist: (value) =>
          left(const Failure.clientFailure(userAlreadyExistError)),
      withData: (value) => right(value.data.toUser()),
    );
  }

  @override
  Future<bool> isUsernameAvailable(String username) async {
    final isAvailable = await _remmoteDatasource.getByUsername(username);
    return isAvailable.maybeMap(
      noDataFound: (value) => true,
      orElse: () => false,
    );
  }

  @override
  Future<Either<Failure, User>> getByUsername(String username) async {
    final user = await _remmoteDatasource.getByUsername(username);
    return user.maybeMap(
      noConnection: (value) =>
          left(const Failure.clientFailure(noConnectionError)),
      withData: (value) => right(value.data.toUser()),
      noDataFound: (value) =>
          left(const Failure.clientFailure(userNotFoundError)),
      internalError: (value) => left(Failure.serverFailure(value.code)),
      badRequest: (value) => left(const Failure.clientFailure(badRequestError)),
      orElse: () => left(const Failure.serverFailure(500)),
    );
  }

  @override
  Future<Either<Failure, Unit>> delete(String username) async {
    final result = await _remmoteDatasource.delete(username);
    return result.maybeMap(
      orElse: () => left(const Failure.serverFailure(500)),
      withoutData: (value) => right(unit),
      noConnection: (value) =>
          left(const Failure.clientFailure(noConnectionError)),
      badRequest: (value) => left(const Failure.clientFailure(badRequestError)),
      internalError: (value) => left(Failure.serverFailure(value.code)),
    );
  }

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    final res = await _remmoteDatasource.getUsers();
    return res.maybeMap(
      orElse: () => left(const Failure.serverFailure(500)),
      noConnection: (value) =>
          left(const Failure.clientFailure(noConnectionError)),
      badRequest: (value) => left(const Failure.clientFailure(badRequestError)),
      internalError: (value) => left(Failure.serverFailure(value.code)),
      noDataFound: (value) => right(List.empty()),
      withData: (value) {
        final users = value.data.map((e) => e.toUser()).toList();
        return right(users);
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> update(UserDto dto) async {
    final result = await _remmoteDatasource.update(dto);
    return result.maybeMap(
      orElse: () => left(const Failure.serverFailure(500)),
      withoutData: (value) => right(unit),
      noConnection: (value) =>
          left(const Failure.clientFailure(noConnectionError)),
      badRequest: (value) => left(const Failure.clientFailure(badRequestError)),
      internalError: (value) => left(Failure.serverFailure(value.code)),
    );
  }
}
