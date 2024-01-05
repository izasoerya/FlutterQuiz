import 'package:flutter/material.dart';
import 'package:quiz_app/src/result/question_answer.dart';
import 'package:quiz_app/src/result/question_index.dart';

class QuizResult extends StatelessWidget {
  const QuizResult({Key? key, required this.resultQuiz}) : super(key: key);
  final List<Map<String, Object>> resultQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: resultQuiz.map((data) {
          return Row(
            children: [
              const SizedBox(
                height: 75,
              ),
              QuestionIndex(data: data),
              Expanded(
                child: DataAnswerQuiz(data: data),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
