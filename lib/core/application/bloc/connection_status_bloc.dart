import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'connection_status_event.dart';
import 'connection_status_state.dart';

class ConnectionStatusBloc
    extends Bloc<ConnectionStatusEvent, ConnectionStatusState> {
  ConnectionStatusBloc() : super(const ConnectionStatusState.initial()) {
    on<ConnectionStatusEvent>((event, emit) {
      event.map(
        checkConnection: (event) => _checkConnection(event, emit),
      );
    });
  }

  void _checkConnection(
      ConnectionStatusEvent event, Emitter<ConnectionStatusState> emit) {
    final key = event.connectivity.keys.toList()[0];
    switch (key) {
      case ConnectivityResult.mobile:
        emit(
            ConnectionStatusState.mobileConnectivity(event.connectivity[key]!));
        break;
      case ConnectivityResult.wifi:
        emit(ConnectionStatusState.wifiConnectivity(event.connectivity[key]!));
        break;
      case ConnectivityResult.none:
      default:
        emit(const ConnectionStatusState.noneConnectivity());
    }
  }
}
