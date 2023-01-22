import 'package:flutter/material.dart';
import 'package:random_number_generator/page/randomizer_page.dart';
import 'package:random_number_generator/util/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formkey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RangeSelectorForm(
          formkey: formkey,
          minValueSetter: (value) => _min = value,
          maxValueSetter: (value) => _max = value,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //Todo: valiadte fromkey
            if (formkey.currentState?.validate() == true) {
              formkey.currentState?.save();
              // print(_min);
              // print(_max);
              // ignore: todo
              //TODO: navigate to generate page;
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomizerPage(min: _min, max: _max),
              ));
            }
            // ignore: todo
          },
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}
