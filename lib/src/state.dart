import "package:flutter/material.dart";
import 'package:restart_app/restart_app.dart';
import "localization/color_pallete.dart";
import "background.dart";

import 'home/page.dart';
import 'quiz/page.dart';
import 'result/page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({key}) : super(key: key);
  @override
  State<QuizPage> createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  Widget? currentState;

  @override
  void initState() {
    super.initState();
    currentState = HomePage(questionScreen: questionScreen);
  }

  void questionScreen() {
    setState(() {
      currentState = QuestionPage(showResult: resultScreen);
    });
  }

  void resultScreen() {
    setState(() {
      currentState = ResultPage(
        quizAnswers: quizAnswers,
        restartQuiz: startScreen,
      );
    });
  }

  void startScreen() {
    setState(() {
      Restart.restartApp(webOrigin: null);
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
