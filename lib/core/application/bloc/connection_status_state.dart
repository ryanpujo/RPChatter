import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_status_state.freezed.dart';

@freezed
abstract class ConnectionStatusState with _$ConnectionStatusState {
  const ConnectionStatusState._();
  const factory ConnectionStatusState.initial() = _Initial;
  const factory ConnectionStatusState.mobileConnectivity(bool isConnected) =
      _MobileConnectivity;
  const factory ConnectionStatusState.wifiConnectivity(bool isConnected) =
      _WifiConnectivity;
  const factory ConnectionStatusState.noneConnectivity() = _NoneConnectivity;
}
