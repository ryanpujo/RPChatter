import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_status_event.freezed.dart';

@freezed
class ConnectionStatusEvent with _$ConnectionStatusEvent {
  const ConnectionStatusEvent._();
  const factory ConnectionStatusEvent.checkConnection(
      Map<dynamic, bool> connectivity) = _CheckConnection;
  const factory ConnectionStatusEvent.startCheckConnection() =
      _StartCheckConnection;
}
