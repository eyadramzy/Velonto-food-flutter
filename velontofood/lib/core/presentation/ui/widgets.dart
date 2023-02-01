import 'package:flutter/material.dart';
import 'package:textless/textless.dart';

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: label.s1,
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
