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
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              label: "Password",
              icon: const Icon(Icons.password),
              onSaved: (value) {
                form = form.copyWith(password: value);
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
