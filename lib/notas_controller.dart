import 'package:get/get.dart';

class NotasController extends GetxController {
  final nota1 = RxDouble(0.0);
  final nota2 = RxDouble(0.0);
  final nota3 = RxDouble(0.0);
  final nota4 = RxDouble(0.0);
  final promedio = RxDouble(0.0);
  final notaMayor = RxDouble(0.0);
  final notaMenor = RxDouble(0.0);

  void calcularPromedio() {
    promedio.value =
        (nota1.value + nota2.value + nota3.value + nota4.value) / 4;
  }

  void calcularNotaMayor() {
    final notas = [nota1.value, nota2.value, nota3.value, nota4.value];
    notaMayor.value = notas.reduce((a, b) => a > b ? a : b);
  }

  void calcularNotaMenor() {
    final notas = [nota1.value, nota2.value, nota3.value, nota4.value];
    notaMenor.value = notas.reduce((a, b) => a < b ? a : b);
  }
}
