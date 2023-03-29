import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late final Timer timer;
  int endTime = DateTime.now().millisecondsSinceEpoch + 60000 * 2;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) async {
      await context.read<AuthBloc>().authenticator.currentUser!.reload();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "we sent an email verification. check your email",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            const CircularProgressIndicator(),
            CountdownTimer(
              endTime: endTime,
              widgetBuilder: (context, time) {
                if (time == null) {
                  return ElevatedButton.icon(
                    label: const Text("Resend Verifivation Email"),
                    icon: const Icon(MdiIcons.send),
                    onPressed: () {
                      setState(() {
                        endTime =
                            DateTime.now().millisecondsSinceEpoch + 60000 * 2;
                      });
                      context
                          .read<AuthBloc>()
                          .authenticator
                          .currentUser!
                          .sendEmailVerification();
                    },
                  );
                }
                return Column(
                  children: [
                    Text("${time.min ?? 0}:${time.sec}"),
                    ElevatedButton.icon(
                      label: const Text("Resend Verifivation Email"),
                      icon: const Icon(MdiIcons.send),
                      onPressed: null,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
