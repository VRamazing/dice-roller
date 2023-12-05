import 'package:flutter/material.dart';
import 'package:first_project/gradient_container.dart';
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer([Color.fromARGB(255, 245, 245, 245), Color.fromARGB(255, 52, 2, 138)])

      )
    )
  );
}