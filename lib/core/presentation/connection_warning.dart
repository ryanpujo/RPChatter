import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_state.dart';
import 'package:ryan_pujo_app/core/presentation/error_text.dart';

class ConnectionWarning extends StatelessWidget {
  const ConnectionWarning({super.key});

  final warningMessage = "you are not connected to the internet";

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ConnectionStatusBloc, ConnectionStatusState, bool>(
      selector: (state) {
        return state.maybeWhen(
          orElse: () => false,
          mobileConnectivity: (isConnected) => isConnected,
          wifiConnectivity: (isConnected) => isConnected,
          noneConnectivity: () => false,
        );
      },
      builder: (context, isConnected) {
        return isConnected
            ? const SizedBox()
            : ErrorText(errorText: warningMessage);
      },
    );
  }
}
