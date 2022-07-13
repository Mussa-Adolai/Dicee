import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'dicee',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceeNumber = 1;
  int rightDiceeNumber = 1;
  changeDiceNumber() {
    leftDiceeNumber = Random().nextInt(6) + 1;
    rightDiceeNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    changeDiceNumber();
                  },
                );
              },
              child: Image.asset('image/dice$leftDiceeNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    changeDiceNumber();
                  },
                );
              },
              child: Image.asset('image/dice$rightDiceeNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
