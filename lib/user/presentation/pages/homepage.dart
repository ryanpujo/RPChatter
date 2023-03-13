// ignore_for_file: must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  Widget? registrationResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text(FirebaseAuth.instance.currentUser!.email!),
              ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
                  },
                  child: const Text("Sign out")),
            ],
          ),
        ),
      ),
    );
  }
}
