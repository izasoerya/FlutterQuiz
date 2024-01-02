import "package:flutter/material.dart";

class SelectionPage extends StatelessWidget {
  const SelectionPage({required this.themeColour, key}) : super(key: key);
  final List<Color> themeColour;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: themeColour,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
    );
  }
}
