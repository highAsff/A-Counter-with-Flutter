// ignore: unused_import
import 'package:first_one/screens/home_screen.dart';
import 'package:first_one/zikirmatik.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Nunito"), home: const Zikirmatik());
  }
}
