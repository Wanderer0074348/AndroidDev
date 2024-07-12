import 'package:flutter/material.dart';
import 'package:practice_app_2/gradient_container.dart';
import 'package:practice_app_2/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = GradientContainer(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
          child: activeScreen,
        ),
      ),
    );
  }
}
