import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: Text(
            'Dicee',
            // textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceeNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceeNumber = 4;
                });
              },
              child: Image.asset('image/dice$leftDiceeNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                // ignore: avoid_print
                print('The right button pressed');
              },
              child: Image.asset('image/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
