import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.icon,
    this.onSaved,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autoCorrect = true,
    this.keyboardType,
    required this.name,
    this.onEditingComplete,
    this.onChanged,
    this.validationMessages,
  });

  final String label;
  final Icon icon;
  final Function(String? value)? onSaved;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autoCorrect;
  final TextInputType? keyboardType;
  final String name;
  final void Function(FormControl<dynamic> value)? onEditingComplete;
  final void Function(FormControl<dynamic> value)? onChanged;
  final Map<String, String Function(Object value)>? validationMessages;
  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: name,
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autoCorrect,
      keyboardType: keyboardType,
      validationMessages: validationMessages,
      decoration: InputDecoration(
        label: Text(label),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        prefixIcon: icon,
      ),
      onEditingComplete: onEditingComplete,
      onChanged: onChanged,
    );
  }
}
