// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Zikirmatik extends StatefulWidget {
  const Zikirmatik({super.key});

  @override
  State<Zikirmatik> createState() => _ZikirmatikState();
}

class _ZikirmatikState extends State<Zikirmatik> {
  int _counter = 0;

  void _incrementMethod() {
    _counter++;
    setState(() {});
  }

  void _resetMethod() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/zikirmatik.png',
                  width: 300,
                ),
                Positioned(
                  top: 46,
                  right: 80,
                  child: _counterText(),
                ),
                Positioned(
                  bottom: 30,
                  child: _incrementButton(),
                ),
                Positioned(
                  right: 76,
                  bottom: 114,
                  child: _resetButton(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: _resetMethod,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: _incrementMethod,
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text _counterText() {
    return Text(
      _counter.toString(),
      style:
          TextStyle(fontFamily: 'Digital7', fontSize: 50, color: Colors.white),
    );
  }
}
