import "package:flutter/material.dart";

class SelectionPage extends StatelessWidget {
  const SelectionPage({required this.themeColour, key}) : super(key: key);
  final List<Color> themeColour;
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Select a quiz!"), Text("Coming soon!")],
      ),
    );
  }
}
