import 'package:flutter/material.dart';
import 'package:first_project/coloured_text.dart';
import 'package:first_project/roll_dice.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colorList, {super.key});

  const GradientContainer.purple({super.key}) 
    : colorList = const [Color.fromARGB(255, 245, 245, 245), Color.fromARGB(255, 52, 2, 138)];

  final List<Color> colorList; 
  static const alignmentTop = Alignment.topCenter;
  static const alignmentBottom = Alignment.bottomCenter;

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: colorList, 
            begin: alignmentTop, 
            end: alignmentBottom),
        ),
        child:   const Center(
          child: RollDice()
        ),
    );
  }
  
}