import 'package:flutter/material.dart';
import 'package:notas_sena/notas_controller.dart';
import 'package:notas_sena/widgets/elevated_button_new.dart';

class RowButtons extends StatelessWidget {
  final NotasController notasController;

  const RowButtons(this.notasController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButtonNew("Promedio", notasController.calcularPromedio),
        ElevatedButtonNew("Nota Mayor", notasController.calcularNotaMayor),
        ElevatedButtonNew("Nota Menor", notasController.calcularNotaMenor),
      ],
    );
  }
}
