// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';

import '../widgets/user_register_form.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocBuilder<UserBlocBloc, UserBlocState>(
            builder: (context, state) {
              late Widget stateMessage;
              state.map(
                failureState: (value) =>
                    stateMessage = const Text("failed to register"),
                initialState: (value) => stateMessage = const Text(""),
                loadedState: (value) =>
                    stateMessage = const Text("Succesfully Registered"),
                loadingState: (value) =>
                    stateMessage = const CircularProgressIndicator(),
              );
              return UserRegisterForm(
                warningMessage: stateMessage,
              );
            },
          ),
        ),
      ),
    );
  }
}
