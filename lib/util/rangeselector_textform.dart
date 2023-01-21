import 'package:flutter/material.dart';

class RangeselectorForm extends StatelessWidget {
  const RangeselectorForm(
      {super.key, required this.labeltext, required this.intSetterValue});

  final String? labeltext;
  final void Function(int value) intSetterValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: labeltext),
      keyboardType:
          const TextInputType.numberWithOptions(decimal: false, signed: true),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return "Must be integers";
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intSetterValue(int.parse(newValue ?? '')),
    );
  }
}
