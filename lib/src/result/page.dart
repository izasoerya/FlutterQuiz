import 'package:flutter/material.dart';
import '../quiz/question_answer.dart';
import 'package:quiz_app/src/result/answered_quiz.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({key, required this.quizAnswers}) : super(key: key);
  final List<String> quizAnswers;

  List<Map<String, Object>> fetchQuizResult() {
    final List<Map<String, Object>> quizResult = [];
    for (int i = 0; i < quizAnswers.length; i++) {
      quizResult.add(
        {
          'index': i,
          'question': listQuestions[i].questions,
          'answer': quizAnswers[i],
          'correct_answer': listQuestions[i].answers[0],
        },
      );
    }
    return quizResult;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: QuizResult(resultQuiz: fetchQuizResult()))],
        ));
  }
}
