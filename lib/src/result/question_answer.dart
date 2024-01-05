import 'package:flutter/material.dart';
import 'package:quiz_app/src/result/question_index.dart';

class DataAnswerQuiz extends StatelessWidget {
  const DataAnswerQuiz({key, required this.data}) : super(key: key);
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            QuestionIndex(data: data),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  data['question'] as String,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 35),
          child: Column(children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                data['answer'] as String,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 0, 242),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                data['correct_answer'] as String,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 238, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        )
      ],
    );
  }
}
