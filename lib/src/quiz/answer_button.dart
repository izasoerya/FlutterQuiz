import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {key,
      required this.textButton,
      required this.task,
      required this.quizAnswers})
      : super(key: key);

  final String textButton;
  final void Function() task;
  final List<String> quizAnswers;

  void selectAnswer(String answer) {
    quizAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        selectAnswer(textButton);
        task();
      },
      style: ElevatedButton.styleFrom(),
      child: Text(
        textButton,
        textAlign: TextAlign.center,
      ),
    );
  }
}
