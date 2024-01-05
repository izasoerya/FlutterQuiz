import 'package:flutter/material.dart';
import 'package:quiz_app/src/result/question_answer.dart';

class QuizResult extends StatelessWidget {
  const QuizResult({Key? key, required this.resultQuiz}) : super(key: key);
  final List<Map<String, Object>> resultQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
            children: resultQuiz.map((data) {
          return Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 15)),
              const SizedBox(
                height: 75,
              ),
              Expanded(
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    DataAnswerQuiz(data: data),
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
