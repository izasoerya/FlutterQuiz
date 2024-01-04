import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({key, required this.textButton, required this.task})
      : super(key: key);

  final String textButton;
  final void Function() task;

  final List<String> selectedAnswer = [];
  void selectAnswer(String answer) {
    selectedAnswer.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        selectAnswer(textButton);
        task();
        // print(selectedAnswer);
      },
      style: ElevatedButton.styleFrom(),
      child: Text(
        textButton,
        textAlign: TextAlign.center,
      ),
    );
  }
}
