import "package:flutter/material.dart";

class ThemeBackground extends StatelessWidget {
  const ThemeBackground({required this.themeColour, required this.child, key})
      : super(key: key);
  final List<Color> themeColour;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: themeColour,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: child,
    );
  }
}
