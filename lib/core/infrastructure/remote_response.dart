import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();

  /// use this union when there is no internet error
  const factory RemoteResponse.noConnection() = NoConnection<T>;

  /// use this response when there is something to returned
  const factory RemoteResponse.withData(T data) = WithData<T>;

  /// use this response when there is nothing to returned
  const factory RemoteResponse.withoutData() = WithoutData<T>;

  /// use this response when the data being search is not found
  const factory RemoteResponse.noDataFound() = NoDataFound<T>;

  /// when use do something bad use this
  const factory RemoteResponse.badRequest() = BadRequest<T>;

  /// when the user being created is already exist return this response
  const factory RemoteResponse.userAlreadyExist() = _UserAlreadyExist<T>;

  /// when there is an internal error use this response
  const factory RemoteResponse.internalError(int code) = _InternalError<T>;
}
