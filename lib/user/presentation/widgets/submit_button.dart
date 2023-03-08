import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.blue;
          }
          return Colors.green;
        }),
      ),
      onPressed: form != null && form.valid ? onPressed : null,
      child: const Text("Submit"),
    );
  }
}
