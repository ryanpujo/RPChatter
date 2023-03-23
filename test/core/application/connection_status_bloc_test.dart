import 'package:bloc_test/bloc_test.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_event.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_state.dart';

void main() {
  ConnectionStatusBloc builder() => ConnectionStatusBloc();

  dynamic act(
          ConnectionStatusBloc bloc, Map<ConnectivityResult, bool> result) =>
      bloc.add(ConnectionStatusEvent.checkConnection(result));
  group("checkConnection", () {
    blocTest(
      "should emit none state",
      build: builder,
      act: (bloc) => act(bloc, {ConnectivityResult.none: false}),
      expect: () => [const ConnectionStatusState.noneConnectivity()],
    );

    blocTest(
      "should emit mobile connected state",
      build: builder,
      act: (bloc) => act(bloc, {ConnectivityResult.mobile: true}),
      expect: () => [const ConnectionStatusState.mobileConnectivity(true)],
    );

    blocTest(
      "should emit mobile not connected state",
      build: builder,
      act: (bloc) => act(bloc, {ConnectivityResult.mobile: false}),
      expect: () => [const ConnectionStatusState.mobileConnectivity(false)],
    );

    blocTest(
      "should emit wifi connected state",
      build: builder,
      act: (bloc) => act(bloc, {ConnectivityResult.wifi: true}),
      expect: () => [const ConnectionStatusState.wifiConnectivity(true)],
    );

    blocTest(
      "should emit wifi not connected state",
      build: builder,
      act: (bloc) => act(bloc, {ConnectivityResult.wifi: false}),
      expect: () => [const ConnectionStatusState.wifiConnectivity(false)],
    );
  });
}
