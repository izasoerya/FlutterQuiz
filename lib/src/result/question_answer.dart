import 'package:flutter/material.dart';

class DataAnswerQuiz extends StatelessWidget {
  const DataAnswerQuiz({key, required this.data}) : super(key: key);
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data['question'] as String,
          style: const TextStyle(color: Colors.white),
        ),
        Text(data['answer'] as String),
        Text(data['correct_answer'] as String),
      ],
    );
  }
}
