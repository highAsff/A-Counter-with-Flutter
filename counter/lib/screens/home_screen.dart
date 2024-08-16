import 'package:first_one/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(221, 216, 202, 202),
        appBar: AppBar(
          title: const Text(
            "MY APP",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          backgroundColor: const Color.fromARGB(255, 103, 103, 180),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ));
              },
              child: const Text(
                'Go to Second Screen',
                style: TextStyle(
                  color: Color.fromARGB(255, 104, 141, 55),
                ),
              ),
            ),
            const Icon(Icons.add_alert_rounded)
          ],
        )));
  }
}
