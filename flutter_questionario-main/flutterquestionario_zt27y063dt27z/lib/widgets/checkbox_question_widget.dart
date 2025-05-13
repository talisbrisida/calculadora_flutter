import 'package:flutter/material.dart';
import '../models/question.dart';

class CheckboxQuestionWidget extends StatefulWidget {
  final Question question;

  const CheckboxQuestionWidget({super.key, required this.question});

  @override
  State<CheckboxQuestionWidget> createState() => _CheckboxQuestionWidgetState();
}

class _CheckboxQuestionWidgetState extends State<CheckboxQuestionWidget> {
  final Map<String, bool> answers = {};

  @override
  void initState() {
    super.initState();
    for (var option in widget.question.options) {
      answers[option] = false;
    }
  }

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
              return CheckboxListTile(
                title: Text(option),
                value: answers[option],
                onChanged: (bool? value) {
                  setState(() {
                    answers[option] = value ?? false;
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
