import 'package:flutter/material.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex({Key? key, required this.data}) : super(key: key);
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return RoundedBackgroundText(
      ((data['index'] as int) + 1).toString(),
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
      backgroundColor: Colors.green,
      innerRadius: 150,
      outerRadius: 100,
    );
  }
}
