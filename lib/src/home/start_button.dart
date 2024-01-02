import 'package:flutter/material.dart';

const List<Color> themeColour = [
  Color.fromARGB(255, 142, 45, 226),
  Color.fromARGB(255, 74, 0, 224)
];

class StartButton extends StatelessWidget {
  const StartButton(this.changeState, {key}) : super(key: key);
  final void Function() changeState;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          changeState();
        },
        child: const Wrap(
          children: <Widget>[
            Icon(
              Icons.play_arrow,
              color: Colors.purple,
              size: 20,
            ),
            Padding(padding: EdgeInsets.only(right: 5)),
            Text('Start Quiz!'),
          ],
        ));
  }
}
