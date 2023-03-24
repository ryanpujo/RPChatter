import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/core/presentation/connection_warning.dart';

import '../../core/presentation/custom_text_form_field.dart';
import '../../core/presentation/submit_button.dart';
import '../application/bloc/auth_bloc.dart';
import '../../core/presentation/error_text.dart';
import '../application/bloc/auth_event.dart';
import 'register_clickable_text.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.errorMessage,
  });

  final String errorMessage;

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
          if (errorMessage != "")
            ErrorText(
              errorText: errorMessage,
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
          SubmitButton(
            label: "Sign in",
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEvent.signIn(),
                  );
            },
          ),
        ],
      ),
    );
  }
}
