import 'package:dartz/dartz.dart';
import 'package:ryan_pujo_app/core/infrastructure/failure/failure.dart';
import 'package:ryan_pujo_app/user/domain/user.dart';
import 'package:ryan_pujo_app/user/infrastructure/user_dto.dart';

abstract class UserRepositoryContract {
  Future<Either<Failure, User>> registerUser(UserDto dto);
  Future<bool> isUsernameAvailable(String username);
  Future<Either<Failure, User>> getByUsername(String username);
}
