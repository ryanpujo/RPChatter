import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_response.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();
  const factory RemoteResponse.noConnection() = NoConnection<T>;
  const factory RemoteResponse.withData(T data) = WithData<T>;
  const factory RemoteResponse.noDataFound() = NoDataFound<T>;
  const factory RemoteResponse.badRequest() = BadRequest<T>;
}
