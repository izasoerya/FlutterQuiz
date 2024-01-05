import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex({Key? key, required this.data}) : super(key: key);
  final Map<String, Object> data;

  MaterialColor checkAnswer() {
    return data['answer'] == data['correct_answer'] ? Colors.green : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return RoundedBackgroundText(
      ((data['index'] as int) + 1).toString(),
      style: const TextStyle(
          color: Color.fromARGB(255, 142, 45, 226),
          fontWeight: FontWeight.bold,
          fontSize: 24,
          shadows: [
            Shadow(
              blurRadius: 2.0,
              color: Colors.black,
              offset: Offset(1.0, 1.0),
            ),
          ]),
      backgroundColor: checkAnswer(),
      innerRadius: 55,
      outerRadius: 50,
    );
  }
}
