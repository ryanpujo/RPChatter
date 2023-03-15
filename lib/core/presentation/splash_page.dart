import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.mounted) {
      Timer(
        const Duration(seconds: 2),
        () => context.read<AuthBloc>().add(const AuthEvent.isAuthenticated()),
      );
    }
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                MdiIcons.chat,
                size: 150,
                color: Colors.blue,
              ),
              LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
