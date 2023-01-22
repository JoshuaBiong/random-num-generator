import 'package:flutter/material.dart';
import 'package:random_number_generator/util/rangeselector_input_text_form.dart';

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm(
      {super.key,
      required this.formkey,
      required this.minValueSetter,
      required this.maxValueSetter});

  final GlobalKey<FormState> formkey;

  final IntValueSetter minValueSetter, maxValueSetter;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeselectorForm(
              labeltext: "MIN",
              intValueSetter: minValueSetter,
            ),
            const SizedBox(
              height: 20,
            ),
            RangeselectorForm(
              labeltext: "MAX",
              intValueSetter: maxValueSetter,
            ),
          ],
        ),
      ),
    );
  }
}
