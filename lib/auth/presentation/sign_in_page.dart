import 'package:flutter/material.dart';
import 'package:ryan_pujo_app/auth/presentation/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: SignInForm(),
        ),
      ),
    );
  }
}
