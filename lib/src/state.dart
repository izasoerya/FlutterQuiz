import "package:flutter/material.dart";
import "background.dart";
import 'package:quiz_app/src/home/page.dart';
import 'quiz/page.dart';
import "localization/color_pallete.dart";
import './result/page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({key}) : super(key: key);
  @override
  State<QuizPage> createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  Widget? currentState;
  String state = "home";
  @override
  void initState() {
    super.initState();
    currentState = HomePage(questionScreen);
  }

  void questionScreen() {
    setState(() {
      currentState = QuestionPage(showResult: resultScreen);
    });
  }

  void resultScreen() {
    setState(() {
      currentState = const ResultPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ThemeBackground(themeColour: themeColour, child: currentState!),
    ));
  }
}
