import "package:flutter/material.dart";
import 'answer_button.dart';
import "package:quiz_app/src/quiz/question_answer.dart";

class QuestionPage extends StatefulWidget {
  const QuestionPage({key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPage();
}

int iterQuestion = 0;

class _QuestionPage extends State<QuestionPage> {
  void continueQuestion() {
    setState(() {
      iterQuestion == listQuestions.length - 1
          ? iterQuestion = 0
          : iterQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = listQuestions[iterQuestion];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(25),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                currentQuestion.questions,
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              ...currentQuestion.shuffleAnswer().map((answer) {
                return AnswerButton(textButton: answer, task: continueQuestion);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
