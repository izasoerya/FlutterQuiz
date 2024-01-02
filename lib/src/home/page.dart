import 'package:flutter/material.dart';
import 'start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.changeState, {key}) : super(key: key);
  final void Function() changeState;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
          const Padding(padding: EdgeInsets.only(top: 50.0)),
          const Text(
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            'Learn Flutter the fun way!',
          ),
          const Padding(padding: EdgeInsets.only(top: 25.0)),
          StartButton(changeState),
        ],
      ),
    );
  }
}
