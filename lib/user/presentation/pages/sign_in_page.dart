import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SignInScreen(
          actions: const [],
          providers: [
            EmailAuthProvider(),
            GoogleProvider(
              clientId:
                  "175002313861-aif141i1kd1lc9og98hedko4rcvrjil8.apps.googleusercontent.com",
            ),
          ],
        ),
      ),
    );
  }
}
