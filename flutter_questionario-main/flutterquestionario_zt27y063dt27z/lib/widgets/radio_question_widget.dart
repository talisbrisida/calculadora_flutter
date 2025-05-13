import 'package:flutter/material.dart';
import '../models/question.dart';

class RadioQuestionWidget extends StatefulWidget {
  final Question question;

  const RadioQuestionWidget({super.key, required this.question});

  @override
  State<RadioQuestionWidget> createState() => _RadioQuestionWidgetState();
}

class _RadioQuestionWidgetState extends State<RadioQuestionWidget> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question.text, style: const TextStyle(fontWeight: FontWeight.bold)),
            ...widget.question.options.map((option) {
              return RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
