import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ryan_pujo_app/core/application/bloc/connection_status_bloc.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    this.onPressed,
    required this.label,
  });

  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    bool isConnected = false;
    final state = context.watch<ConnectionStatusBloc>().state;
    state.maybeWhen(
      orElse: () => isConnected = false,
      mobileConnectivity: (value) => isConnected = value,
      wifiConnectivity: (value) => isConnected = value,
    );
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.blue;
          }
          return Colors.green;
        }),
      ),
      onPressed: form != null && form.valid && isConnected ? onPressed : null,
      child: Text(label),
    );
  }
}
