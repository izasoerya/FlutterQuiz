import "package:flutter/material.dart";
import 'answer_button.dart';
import "package:quiz_app/src/quiz/question_answer.dart";

class QuestionPage extends StatefulWidget {
  const QuestionPage({key}) : super(key: key);
  @override
  State<QuestionPage> createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionPage> {
  final QuizQuestion questionOne = listQuestions[0];

  @override
  Widget build(BuildContext context) {
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
                style: const TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
                listQuestions[0].questions,
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              ...questionOne.shuffleAnswer().map((answer) {
                return AnswerButton(textButton: answer, task: () {});
              }),
            ],
          ),
        ),
      ),
    );
  }
}
