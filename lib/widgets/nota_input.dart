import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotaInput extends StatelessWidget {
  final RxDouble nota;
  final String labelText;

  const NotaInput({required this.nota, required this.labelText, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (value) {
            nota.value = double.tryParse(value) ?? 0.0;
          },
        ),
      ],
    );
  }
}
