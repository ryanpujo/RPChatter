import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterClickableText extends StatelessWidget {
  const RegisterClickableText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
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
                context.go("/register-page");
              },
          )
        ],
      ),
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
