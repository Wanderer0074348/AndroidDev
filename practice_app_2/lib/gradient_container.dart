import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.movePage, {super.key});

  final void Function() movePage;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz_logo.png',
            width: 250,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: movePage,
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(fontSize: 18),
                side: BorderSide.none),
            icon: const Icon(Icons.play_arrow),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
