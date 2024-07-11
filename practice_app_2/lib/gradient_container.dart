import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blueAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // stops: [0.5, 0.9],
          // tileMode: TileMode.clamp,
          // transform: GradientRotation(0.5),
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'pratice_app_2/assets/images/quiz_logo.png',
            width: 200,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      )),
    );
  }
}
