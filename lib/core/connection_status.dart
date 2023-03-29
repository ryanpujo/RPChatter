import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_ping/dart_ping.dart';

class ConnectionStatus {
  ConnectionStatus._internal();
  static final ConnectionStatus _instance = ConnectionStatus._internal();
  static ConnectionStatus get instance => _instance;
  var ping = Ping("google.com", timeout: 1, interval: 3);

  final Connectivity _connectivity = Connectivity();
  bool _isConnected = false;
  bool get isConnected => _isConnected;
  late StreamSubscription<PingData> subscription;

  Future<void> initialize() async {
    subscription = ping.stream.listen((event) async {
      bool isCancelled = false;
      if (event.error != null && event.error!.error == ErrorType.unknownHost) {
        isCancelled = true;
      }
      final result = await _connectivity.checkConnectivity();
      await checkConnection(result, isCancelled);
    }, cancelOnError: false);
  }

  final StreamController onConnectionChangeController =
      StreamController.broadcast();

  Stream get onConnectionChange => onConnectionChangeController.stream;

  Future<void> checkConnection(
    ConnectivityResult result,
    bool isCancelled,
  ) async {
    if (isCancelled) {
      await subscription.cancel();
      await ping.stop();
      ping = Ping("google.com", timeout: 1, interval: 3);
    }
    Socket.connect("google.com", 53, timeout: const Duration(seconds: 1))
        .then((value) {
      _isConnected = true;
      onConnectionChangeController
          .add({result: true, "isCancelled": isCancelled});
    }).onError((error, stackTrace) {
      _isConnected = false;
      onConnectionChangeController
          .add({result: false, "isCancelled": isCancelled});
    });
  }

  void dispose() => onConnectionChangeController.close();
}
