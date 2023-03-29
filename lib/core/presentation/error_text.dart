import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    super.key,
    required this.errorText,
  });

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          errorText,
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
