import 'package:flutter/material.dart';

class RangeselectorForm extends StatelessWidget {
  const RangeselectorForm({super.key, required this.labeltext});

  final String? labeltext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: labeltext),
      keyboardType:
          const TextInputType.numberWithOptions(decimal: false, signed: true),
    );
  }
}
