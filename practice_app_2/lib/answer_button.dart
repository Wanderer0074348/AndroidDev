import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onPress});
  final String answerText;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
          backgroundColor: const Color.fromARGB(255, 35, 29, 118),
          foregroundColor: const Color.fromARGB(255, 187, 180, 232),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(answerText),
    );
  }
}
