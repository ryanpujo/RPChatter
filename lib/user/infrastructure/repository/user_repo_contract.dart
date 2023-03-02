import 'package:dartz/dartz.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

abstract class UserRepositoryContract {
  Future<Either<Failure, int>> registerUser(UserDto dto);
}
