import 'package:flutter/material.dart';
import 'package:practice_app_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:
            GradientContainer([Colors.white, Color.fromARGB(255, 62, 62, 52)]),
      ),
    ),
  );
}
