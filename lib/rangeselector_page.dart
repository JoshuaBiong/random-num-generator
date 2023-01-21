import 'package:flutter/material.dart';
import 'package:random_number_generator/util/rangeselector_textform.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RangeselectorForm(
                  labeltext: "MIN",
                  intSetterValue: (value) => _min = value,
                ),
                const SizedBox(
                  height: 20,
                ),
                RangeselectorForm(
                  labeltext: "MAX",
                  intSetterValue: (value) => _max = value,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}
