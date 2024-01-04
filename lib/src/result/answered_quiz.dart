import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  const QuizResult({Key? key, required this.resultQuiz}) : super(key: key);
  final List<Map<String, Object>> resultQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: resultQuiz.map((data) {
      return Row(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(((data['index'] as int) + 1).toString()),
          Column(
            children: [
              Text(data['question'] as String),
              Text(data['answer'] as String),
              Text(data['correct_answer'] as String),
            ],
          )
        ],
      );
    }).toList());
  }
}
