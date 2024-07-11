import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String path = "";

  int randomNumber() {
    int x = Random().nextInt(6) + 1;
    return x;
  }

  void rollDice() {
    setState(() {
      int x = randomNumber();
      path = 'assets/images/dice-$x.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(path, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(5),
              foregroundColor: Colors.blueGrey,
              textStyle: const TextStyle(fontSize: 24)),
          child: const Text("Press me"),
        )
      ],
    );
  }
}
