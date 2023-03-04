// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/user_bloc_bloc.dart';
import '../../application/bloc/user_bloc_event.dart';
import '../../domain/user.dart';
import '../models/user_form.dart';
import 'custom_text_form_field.dart';

class UserRegisterForm extends StatelessWidget {
  UserRegisterForm({
    super.key,
    required this.warningMessage,
  });

  var form = const UserForm.form();
  final _formKey = GlobalKey<FormState>();
  final Widget warningMessage;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
            Center(child: warningMessage),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              label: "First Name",
              icon: const Icon(Icons.person),
              onSaved: (value) {
                form = form.copyWith(fName: value);
              },
              validator: (value) {
                if (value != null && value.length < 3) {
                  return "first name should be at least 3 characters";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              label: "Last Name",
              icon: const Icon(Icons.person_2),
              onSaved: (value) {
                form = form.copyWith(lName: value);
              },
              validator: (value) {
                if (value != null && value.length < 3) {
                  return "first name should be at least 3 characters";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              label: "Username",
              icon: const Icon(Icons.person_3),
              onSaved: (value) {
                form = form.copyWith(username: value);
              },
              validator: (value) {
                if (value != null && value.length < 7) {
                  return "username should be at least 7 characters";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              label: "Email",
              icon: const Icon(Icons.mail),
              onSaved: (value) {
                form = form.copyWith(email: value);
              },
              validator: (value) {
                if (value != null && value.length < 10) {
                  return "email should be at least 10 characters";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              label: "Password",
              obscureText: true,
              enableSuggestions: false,
              autoCorrect: false,
              icon: const Icon(Icons.password),
              onSaved: (value) {
                form = form.copyWith(password: value);
              },
              validator: (value) {
                if (value != null && value.length < 12) {
                  return "first name should be at least 12 characters";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blue;
                  }
                  return Colors.green;
                }),
              ),
              onPressed: () {
                if (!_formKey.currentState!.validate()) {
                  return;
                }
                _formKey.currentState?.save();
                final user = User(
                  fName: form.fName!,
                  lName: form.lName!,
                  username: form.username!,
                  email: form.email!,
                  password: form.password!,
                );
                context.read<UserBlocBloc>().add(UserBlocEvent.register(user));
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
