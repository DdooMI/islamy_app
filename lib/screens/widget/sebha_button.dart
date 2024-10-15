import 'package:flutter/material.dart';

class SebhaButton extends StatelessWidget {
  SebhaButton({required this.onPressed, required this.child, super.key});
  void Function()? onPressed;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.onSurface),
        onPressed: onPressed,
        child: child);
  }
}
