import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceroll = 2;
  void rollDice() {
    setState(() {
      diceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$diceroll.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 241, 113)),
            child: const Text(
              'Roll Dice',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ))
      ],
    );
  }
}
