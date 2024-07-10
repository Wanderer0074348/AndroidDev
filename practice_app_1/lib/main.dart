import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ,
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget{
  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.black]),
          ),
          child: const Center(
            child: Text("Hello World",
                style: TextStyle(color: Colors.blue, fontSize: 28.0)),
          ),
        );
  }


}
