import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.icon,
    required this.onSaved,
  });

  final String label;
  final Icon icon;
  final Function(String? value) onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        prefixIcon: icon,
      ),
      onSaved: onSaved,
    );
  }
}
