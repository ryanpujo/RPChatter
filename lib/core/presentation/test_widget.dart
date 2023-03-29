import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_event.dart';
import 'package:ryan_pujo_app/core/connection_status.dart';

import 'connection_warning.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
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
    connectionStatus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ConnectionWarning());
  }
}
