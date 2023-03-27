// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_bloc.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_event.dart';
import 'package:ryan_pujo_app/user/application/bloc/user_bloc_state.dart';

import '../../application/bloc/user_bloc_bloc.dart';
import '../../application/bloc/user_bloc_event.dart';
import '../../../core/presentation/custom_text_form_field.dart';
import '../../../core/presentation/submit_button.dart';

class UserRegisterForm extends StatelessWidget {
  const UserRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: ReactiveForm(
            formGroup: context.read<UserBlocBloc>().formGroup,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: BlocListener<UserBlocBloc, UserBlocState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    loadedState: (user, users) {
                      context
                          .read<AuthBloc>()
                          .formGroup
                          .control("username")
                          .value = user!.email;
                      context
                              .read<AuthBloc>()
                              .formGroup
                              .control("password")
                              .value =
                          context
                              .read<UserBlocBloc>()
                              .formGroup
                              .control("password")
                              .value;
                      context.read<AuthBloc>().add(const AuthEvent.signIn());
                      context
                          .read<UserBlocBloc>()
                          .formGroup
                          .control("password")
                          .value = "";
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      name: "fname",
                      label: "First Name",
                      icon: const Icon(Icons.person),
                      validationMessages: {
                        "required": (value) => "this field is required"
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      name: "lname",
                      label: "Last Name",
                      icon: const Icon(Icons.person_2),
                      validationMessages: {
                        "required": (value) => "this field is required"
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      name: "username",
                      label: "Username",
                      icon: const Icon(Icons.person_3),
                      validationMessages: {
                        "required": (value) => "this field is required"
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      name: "email",
                      label: "Email",
                      icon: const Icon(Icons.mail),
                      keyboardType: TextInputType.emailAddress,
                      validationMessages: {
                        "required": (value) => "this field is required",
                        "email": (value) =>
                            "this field needs a valid email address"
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                      name: "password",
                      label: "Password",
                      obscureText: true,
                      enableSuggestions: false,
                      autoCorrect: false,
                      icon: const Icon(Icons.password),
                      validationMessages: {
                        "required": (value) => "this field is required"
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    BlocSelector<UserBlocBloc, UserBlocState, bool>(
                      selector: (state) {
                        return state.maybeMap(
                          orElse: () => false,
                          loadingState: (value) => true,
                        );
                      },
                      builder: (context, isLoading) {
                        return SubmitButton(
                          icon: const Icon(MdiIcons.registeredTrademark),
                          label: "Submit",
                          onPressed: isLoading
                              ? null
                              : () {
                                  context.read<UserBlocBloc>().add(
                                        const UserBlocEvent.register(),
                                      );
                                },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
