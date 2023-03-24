import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_ping/dart_ping.dart';

class ConnectionStatus {
  ConnectionStatus._internal();
  static final ConnectionStatus _instance = ConnectionStatus._internal();
  static ConnectionStatus get instance => _instance;
  final ping = Ping("google.com", timeout: 1, interval: 3);

  final Connectivity _connectivity = Connectivity();
  bool _isConnected = false;
  bool get isConnected => _isConnected;

  Future<void> initialize() async {
    ping.stream.listen((event) async {
      final result = await _connectivity.checkConnectivity();
      await checkConnection(result);
    });
  }

  final StreamController onConnectionChangeController =
      StreamController.broadcast();

  Stream get onConnectionChange => onConnectionChangeController.stream;

  Future<void> checkConnection(ConnectivityResult result) async {
    Socket.connect("google.com", 53, timeout: const Duration(seconds: 1))
        .then((value) {
      _isConnected = true;
      onConnectionChangeController.add({result: true});
    }).onError((error, stackTrace) {
      _isConnected = false;
      onConnectionChangeController.add({result: false});
    });
  }

  void dispose() => onConnectionChangeController.close();
}
