import 'package:flutter/material.dart';

class ElevatedButtonNew extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ElevatedButtonNew(this.label, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
