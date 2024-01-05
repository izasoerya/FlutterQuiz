import 'package:flutter/material.dart';
import 'package:quiz_app/src/result/restart_button.dart';
import '../quiz/question_answer.dart';
import 'package:quiz_app/src/result/quiz_result.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({key, required this.quizAnswers, required this.restartQuiz})
      : super(key: key);
  final List<String> quizAnswers;
  final void Function() restartQuiz;

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
    final resultQuiz = fetchQuizResult();
    final int questionIndexSum = resultQuiz.length;
    final correctAnswerSum = resultQuiz.where((data) {
      return data['answer'] == data['correct_answer'];
    }).length;

    return Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answered $correctAnswerSum of $questionIndexSum questions correctly!',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            QuizResult(resultQuiz: resultQuiz),
            const SizedBox(
              height: 20,
            ),
            RestartButton(onPressed: restartQuiz),
          ],
        ));
  }
}
