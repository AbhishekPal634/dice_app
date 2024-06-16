import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 230,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 147, 53, 255),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 25,
              right: 25,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
