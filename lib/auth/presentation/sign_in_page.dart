import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/auth/presentation/sign_in_form.dart';

import '../application/bloc/auth_bloc.dart';
import '../application/bloc/auth_state.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return const SignInForm(errorMessage: "");
                  },
                  failure: (value) {
                    return SignInForm(errorMessage: value.message);
                  },
                );
              },
            ),
          )),
    );
  }
}
