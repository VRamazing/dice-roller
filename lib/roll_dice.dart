import "dart:math";
import "package:flutter/material.dart";
import "package:first_project/coloured_text.dart";

final randomNumber = Random();

class RollDice extends StatefulWidget{
  const RollDice({super.key});

  @override
  State<RollDice> createState(){
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDiceValue = 2;

  void rollDice(){
    setState(() {
      currentDiceValue = randomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceValue.png", width: 200),
        TextButton(onPressed: rollDice, 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(5)
                  ),
                  child: const ColouredText("Roll Dice"),
                  ),],
    );
  }
}