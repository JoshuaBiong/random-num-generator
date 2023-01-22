import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeselectorForm extends StatelessWidget {
  const RangeselectorForm(
      {super.key, required this.labeltext, required this.intValueSetter});

  final String? labeltext;
  final IntValueSetter intValueSetter;

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
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}
