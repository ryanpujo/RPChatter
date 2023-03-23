import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_event.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_state.dart';
import 'package:ryan_pujo_app/core/connection_status.dart';
import 'package:ryan_pujo_app/core/presentation/error_text.dart';

class ConnectionWarning extends StatefulWidget {
  const ConnectionWarning({super.key, this.onConnectionChange});
  final Function(bool isConnected)? onConnectionChange;

  @override
  State<ConnectionWarning> createState() => _ConnectionWarningState();
}

class _ConnectionWarningState extends State<ConnectionWarning> {
  var warningMessage = "";
  final ConnectionStatus connectionStatus = ConnectionStatus.instance;

  @override
  void initState() {
    super.initState();
    connectionStatus.onConnectionChange.listen((event) {
      BlocProvider.of<ConnectionStatusBloc>(context)
          .add(ConnectionStatusEvent.checkConnection(event));
    });
  }

  @override
  void dispose() {
    super.dispose();
    connectionStatus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectionStatusBloc, ConnectionStatusState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {
            if (widget.onConnectionChange != null) {
              widget.onConnectionChange!(false);
            }
            warningMessage = "you are offline";
          },
          mobileConnectivity: (value) {
            if (widget.onConnectionChange != null) {
              widget.onConnectionChange!(value.isConnected);
            }
            if (!value.isConnected) {
              warningMessage = "you are not connected to interner";
            } else {
              warningMessage = "";
            }
          },
          wifiConnectivity: (value) {
            if (widget.onConnectionChange != null) {
              widget.onConnectionChange!(value.isConnected);
            }
            if (!value.isConnected) {
              warningMessage = "you are not connected to interner";
            } else {
              warningMessage = "";
            }
          },
        );
      },
      builder: (context, state) {
        return warningMessage == ""
            ? const SizedBox()
            : ErrorText(errorText: warningMessage);
      },
    );
  }
}
