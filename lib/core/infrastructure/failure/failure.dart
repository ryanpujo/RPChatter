import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.serverFailure(String message) = _ServerFailure;
  const factory Failure.userAlreadyExist() = _UserAlreadyExist;
  const factory Failure.noInternetConnection() = _NoInternetConnection;
  const factory Failure.validation({required Map<String, String> errors}) =
      _Validation;
}
