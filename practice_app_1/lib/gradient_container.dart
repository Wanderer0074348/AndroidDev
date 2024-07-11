import 'package:flutter/material.dart';
import 'package:practice_app_1/text_widget.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    Alignment startAlignment = Alignment.topCenter;
    Alignment endAlignment = Alignment.bottomCenter;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: const [Colors.white, Colors.cyan],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        child: TextWidget("I Love Pokemon"),
      ),
    );
  }
}
