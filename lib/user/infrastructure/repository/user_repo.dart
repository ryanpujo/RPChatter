import 'dart:io';

import 'package:ryan_pujo_app/core/infrastructure/exceptions/failed_precondition_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/user_exist_exception.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ryan_pujo_app/core/infrastructure/exceptions/network_exception.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

class UserRepo implements UserRepositoryContract {
  final UserRemoteDatasourceContract _remmoteDatasource;

  UserRepo({required UserRemoteDatasourceContract remmoteDatasource})
      : _remmoteDatasource = remmoteDatasource;

  @override
  Future<Either<Failure, int>> registerUser(UserDto dto) async {
    try {
      final result = await _remmoteDatasource.registerUser(dto);
      return right(result);
    } on RestApiException {
      return left(const Failure.serverFailure("something went wrong"));
    } on UserAlreadyExistException {
      return left(const Failure.userAlreadyExist());
    } on SocketException {
      return left(const Failure.noInternetConnection());
    } on HttpException catch (e) {
      return left(Failure.serverFailure(e.message));
    } on FailePreconditionException {
      return left(const Failure.serverFailure("something went wrong"));
    }
  }
}
