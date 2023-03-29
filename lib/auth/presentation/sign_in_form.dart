import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/auth/application/bloc/auth_state.dart';
import 'package:ryan_pujo_app/core/presentation/connection_warning.dart';
import 'package:ryan_pujo_app/core/presentation/error_text.dart';

import '../../core/presentation/custom_text_form_field.dart';
import '../../core/presentation/submit_button.dart';
import '../application/bloc/auth_bloc.dart';
import '../application/bloc/auth_event.dart';
import 'register_clickable_text.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: context.read<AuthBloc>().formGroup,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Sign in",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          const RegisterClickableText(),
          const SizedBox(
            height: 10,
          ),
          BlocSelector<AuthBloc, AuthState, String>(
            selector: (state) {
              return state.maybeWhen(
                orElse: () => "",
                failure: (message) => message,
              );
            },
            builder: (context, state) {
              return state == ""
                  ? const SizedBox()
                  : ErrorText(errorText: state);
            },
          ),
          const ConnectionWarning(),
          const CustomTextFormField(
            label: "Username/Email",
            icon: Icon(MdiIcons.account),
            name: "username",
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFormField(
            label: "Password",
            icon: Icon(MdiIcons.formTextboxPassword),
            name: "password",
            obscureText: true,
          ),
          const SizedBox(
            height: 15,
          ),
          BlocSelector<AuthBloc, AuthState, bool>(
            selector: (state) {
              return state.maybeMap(
                orElse: () => false,
                loading: (value) => true,
              );
            },
            builder: (context, isLoading) {
              return SubmitButton(
                label: "Sign in",
                icon: const Icon(MdiIcons.login),
                onPressed: isLoading
                    ? null
                    : () {
                        context.read<AuthBloc>().add(
                              const AuthEvent.signIn(),
                            );
                      },
              );
            },
          ),
        ],
      ),
    );
  }
}
