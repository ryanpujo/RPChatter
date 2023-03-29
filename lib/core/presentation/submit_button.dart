import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    this.onPressed,
    required this.label,
    required this.icon,
  });

  final void Function()? onPressed;
  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    final isConnected = context.select<ConnectionStatusBloc, bool>(
      (value) {
        return value.state.maybeWhen(
          orElse: () => false,
          mobileConnectivity: (isConnected) => isConnected,
          wifiConnectivity: (isConnected) => isConnected,
          noneConnectivity: () => false,
        );
      },
    );
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.blue;
          }
          return Colors.green;
        }),
      ),
      onPressed: form != null && form.valid && isConnected ? onPressed : null,
      label: Text(label),
      icon: icon,
    );
  }
}
