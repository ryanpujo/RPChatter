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
    return BlocBuilder<ConnectionStatusBloc, ConnectionStatusState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          mobileConnectivity: (isConnected) {
            return isConnected
                ? const SizedBox()
                : ErrorText(errorText: warningMessage);
          },
          wifiConnectivity: (isConnected) {
            return isConnected
                ? const SizedBox()
                : ErrorText(errorText: warningMessage);
          },
          noneConnectivity: () => const ErrorText(errorText: "you are offline"),
        );
      },
    );
  }
}
