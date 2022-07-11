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

// ignore: use_key_in_widget_constructors
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceeNumber = '2';
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                // ignore: avoid_print
                print('hi TextButton');
              },
              child: Image.asset('image/dice$leftDiceeNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                // ignore: avoid_print
                print('hi TextButton22');
              },
              child: Image.asset('image/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
