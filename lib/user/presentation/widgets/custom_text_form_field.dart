import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.icon,
      required this.onSaved,
      this.obscureText = false,
      this.enableSuggestions = true,
      this.autoCorrect = true,
      this.validator});

  final String label;
  final Icon icon;
  final Function(String? value) onSaved;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autoCorrect;
  final String? Function(String? value)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autoCorrect,
      decoration: InputDecoration(
        label: Text(label),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        prefixIcon: icon,
      ),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
