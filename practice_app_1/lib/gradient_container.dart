import 'package:flutter/material.dart';
import 'package:practice_app_1/dice_roller.dart';

// import 'package:practice_app_1/text_widget.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    // Alignment startAlignment = Alignment.topCenter;
    // Alignment endAlignment = Alignment.bottomCenter;

    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: colors),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
