// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/init.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';

import '../../application/bloc/user_bloc_bloc.dart';
import '../../application/bloc/user_bloc_event.dart';
import '../../domain/user.dart';
import '../../../core/presentation/custom_text_form_field.dart';
import '../../../core/presentation/submit_button.dart';

class UserRegisterForm extends StatefulWidget {
  const UserRegisterForm({super.key});

  static final userRepo = locator<UserRepositoryContract>();

  static Future<Map<String, dynamic>?> _uniqueUsername(
      AbstractControl<dynamic> control) async {
    final error = {"username already been used": false};
    final isUnique = await userRepo.isUsernameAvailable(control.value);
    if (!isUnique) {
      control.markAllAsTouched();
      return error;
    }
    return null;
  }

  @override
  State<UserRegisterForm> createState() => _UserRegisterFormState();
}

class _UserRegisterFormState extends State<UserRegisterForm> {
  final form = FormGroup({
    "fname": FormControl<String>(validators: [Validators.required]),
    "lname": FormControl<String>(validators: [Validators.required]),
    "username": FormControl<String>(
      validators: [Validators.required],
      asyncValidators: [UserRegisterForm._uniqueUsername],
    ),
    "email": FormControl<String>(validators: [
      Validators.email,
      Validators.required,
    ]),
    "password": FormControl<String>(validators: [Validators.required])
  });

  @override
  void dispose() {
    super.dispose();
    form.reset();
    form.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ReactiveForm(
          formGroup: form,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Icon(
                  Icons.person,
                  size: 150.0,
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
                    "email": (value) => "this field needs a valid email address"
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
                SubmitButton(
                  label: "Submit",
                  onPressed: () {
                    final user = User(
                      fName: form.control("fname").value,
                      lName: form.control("lname").value,
                      username: form.control("username").value,
                      email: form.control("email").value,
                      password: form.control("password").value,
                    );
                    context
                        .read<UserBlocBloc>()
                        .add(UserBlocEvent.register(user));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
