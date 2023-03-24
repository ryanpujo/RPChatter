import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ryan_pujo_app/core/connection_status.dart';

import 'connection_status_event.dart';
import 'connection_status_state.dart';

class ConnectionStatusBloc
    extends Bloc<ConnectionStatusEvent, ConnectionStatusState> {
  ConnectionStatusBloc(this._connectionStatus)
      : super(const ConnectionStatusState.initial()) {
    on<ConnectionStatusEvent>((event, emit) {
      event.map(
        startCheckConnection: (value) {
          _connectionStatus.onConnectionChange.listen((event) {
            add(ConnectionStatusEvent.checkConnection(event));
          });
        },
        checkConnection: (event) => _checkConnection(event, emit),
      );
    });
  }

  final ConnectionStatus _connectionStatus;
  void _checkConnection(
    ConnectionStatusEvent event,
    Emitter<ConnectionStatusState> emit,
  ) {
    event.map(
      checkConnection: (event) {
        final key = event.connectivity.keys.toList()[0];
        switch (key) {
          case ConnectivityResult.mobile:
            emit(ConnectionStatusState.mobileConnectivity(
                event.connectivity[key]!));
            break;
          case ConnectivityResult.wifi:
            emit(ConnectionStatusState.wifiConnectivity(
                event.connectivity[key]!));
            break;
          case ConnectivityResult.none:
          default:
            emit(const ConnectionStatusState.noneConnectivity());
        }
      },
      startCheckConnection: (value) {},
    );
  }

  @override
  Future<void> close() {
    _connectionStatus.dispose();
    return super.close();
  }
}
