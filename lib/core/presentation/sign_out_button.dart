import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_state.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          unAuthenticated: (value) {
            context.go("/sign-in");
          },
        );
      },
      child: ElevatedButton.icon(
        onPressed: () =>
            context.read<AuthBloc>().add(const AuthEvent.signOut()),
        icon: const Icon(Icons.door_back_door),
        label: const Text("Sign out"),
      ),
    );
  }
}
