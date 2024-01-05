import "package:flutter/material.dart";

class RestartButton extends StatelessWidget {
  const RestartButton({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Restart Quiz'),
    );
  }
}
