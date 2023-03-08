// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_bloc.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';

import '../widgets/user_register_form.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  Widget? registrationResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocBuilder<UserBlocBloc, UserBlocState>(
            builder: (context, state) {
              return state.map(
                initialState: (value) => UserRegisterForm(),
                loadingState: (value) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadedState: (value) => const Text("successfuly registered"),
                failureState: (value) =>
                    Text("${value.failure.errorCode} ${value.failure.message}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
