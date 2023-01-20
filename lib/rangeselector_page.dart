import 'package:flutter/material.dart';
import 'package:random_number_generator/util/rangeselector_textform.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                RangeselectorForm(
                  labeltext: "MIN",
                ),
                SizedBox(
                  height: 20,
                ),
                RangeselectorForm(
                  labeltext: "MAX",
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
