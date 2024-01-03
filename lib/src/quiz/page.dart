import "package:flutter/material.dart";
import "package:quiz_app/src/quiz/question_answer.dart";

class QuestionPage extends StatefulWidget {
  const QuestionPage({key}) : super(key: key);
  @override
  State<QuestionPage> createState() => _QuestionPage();
}

class _QuestionPage extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              style: TextStyle(color: Colors.white),
              "Question is...",
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 2')),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 3')),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 4')),
          ],
        ),
      ),
    );
  }
}
