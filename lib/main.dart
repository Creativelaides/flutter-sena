import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Importaciones Propias
import 'package:notas_sena/widgets/nota_input.dart';
import 'package:notas_sena/widgets/result_set.dart';
import 'package:notas_sena/widgets/row_buttons.dart';
import 'package:notas_sena/notas_controller.dart';

void main() {
  Get.put(NotasController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final NotasController notasController = Get.find<NotasController>();

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Calculadora de Notas")),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ResultSet(notasController.promedio, "Promedio:"),
                  ResultSet(notasController.notaMayor, "Nota Mayor:"),
                  ResultSet(notasController.notaMenor, "Nota Menor:"),
                  const SizedBox(height: 20),
                  NotaInput(nota: notasController.nota1, labelText: "Nota 1"),
                  NotaInput(nota: notasController.nota2, labelText: "Nota 2"),
                  NotaInput(nota: notasController.nota3, labelText: "Nota 3"),
                  NotaInput(nota: notasController.nota4, labelText: "Nota 4"),
                  const SizedBox(height: 20),
                  RowButtons(notasController),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
