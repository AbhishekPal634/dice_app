import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 54, 53, 104),
          Color.fromARGB(255, 37, 38, 60),
        ),
      ),
    ),
  );
}