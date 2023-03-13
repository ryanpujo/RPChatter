import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../core/presentation/submit_button.dart';
import '../../user/presentation/widgets/custom_text_form_field.dart';
import '../application/bloc/auth_bloc.dart';
import '../application/bloc/auth_event.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formGroup = FormGroup({
    "username": FormControl(validators: [Validators.required]),
    "password": FormControl(validators: [Validators.required]),
  });

  @override
  void dispose() {
    super.dispose();
    formGroup.reset();
    formGroup.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: formGroup,
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
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: "Don't have an account? "),
                TextSpan(
                  text: "Register",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.go("/sign-in/register-page");
                    },
                )
              ],
            ),
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            widget.errorMessage,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFormField(
            label: "Username",
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
          ),
          const SizedBox(
            height: 15,
          ),
          SubmitButton(
            label: "Sign in",
            onPressed: () {
              context.read<AuthBloc>().add(
                    AuthEvent.signIn(
                      formGroup.control("username").value,
                      formGroup.control("password").value,
                    ),
                  );
            },
          )
        ],
      ),
    );
  }
}
