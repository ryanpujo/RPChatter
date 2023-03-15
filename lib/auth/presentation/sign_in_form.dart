import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../core/presentation/submit_button.dart';
import '../../core/presentation/custom_text_form_field.dart';
import '../application/bloc/auth_bloc.dart';
import '../application/bloc/auth_event.dart';
import 'error_text.dart';
import 'register_clickable_text.dart';

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
          const RegisterClickableText(),
          const SizedBox(
            height: 10,
          ),
          if (widget.errorMessage != "")
            ErrorText(
              errorText: widget.errorMessage,
            ),
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
