import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {key, required this.textButton, required void Function() this.task})
      : super(key: key);

  final String textButton;
  final void Function() task;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: task,
      style: ElevatedButton.styleFrom(),
      child: Text(textButton),
    );
  }
}
