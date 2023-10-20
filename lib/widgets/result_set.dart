import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultSet extends StatelessWidget {
  final RxDouble result;
  final String label;

  const ResultSet(this.result, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14),
          ),
          Obx(() {
            return Text(
              "${result.value}",
              style: const TextStyle(fontSize: 16),
            );
          }),
        ],
      ),
    );
  }
}
