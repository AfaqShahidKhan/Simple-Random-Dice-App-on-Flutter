import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          title: Center(
            child: Text(
              ('Dicee'),
            ),
          ),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDice() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset("assets/images/dice_$leftDiceNumber.png")),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('assets/images/dice_$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
