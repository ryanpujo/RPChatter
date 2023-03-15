import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

class UserRepo implements UserRepositoryContract {
  final UserRemoteDatasourceContract _remmoteDatasource;

  UserRepo({required UserRemoteDatasourceContract remmoteDatasource})
      : _remmoteDatasource = remmoteDatasource;

  @override
  Future<Either<Failure, User>> registerUser(UserDto dto) async {
    try {
      final result = await _remmoteDatasource.registerUser(dto);
      return right(result.toUser());
    } on RestApiException catch (e) {
      return left(Failure.serverFailure(e.message, e.errorCode));
    }
  }

  @override
  Future<bool> isUsernameAvailable(String username) async {
    final isAvailable = await _remmoteDatasource.getByUsername(username);
    return isAvailable.map(
      noConnection: (value) => false,
      withData: (value) => false,
      noDataFound: (value) => true,
      badRequest: (value) => false,
    );
  }

  @override
  Future<Either<Failure, User>> getByUsername(String username) async {
    final user = await _remmoteDatasource.getByUsername(username);
    return user.maybeMap(
      noConnection: (value) =>
          left(const Failure.clientFailure("no internet connection")),
      withData: (value) => right(value.data.toUser()),
      noDataFound: (value) =>
          left(const Failure.clientFailure("username is not registered yet")),
      orElse: () => left(const Failure.clientFailure("bad request")),
    );
  }
}
