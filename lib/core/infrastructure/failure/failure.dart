import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.serverFailure(String message, int errorCode) =
      _ServerFailure;
  const factory Failure.clientFailure(String message) = _ClientFailure;
}
