import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:tp1_flutter/footer.dart';
import 'package:tp1_flutter/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Map<String, bool> choices = {
    "cinema": false,
    "petanque": false,
    "fitness": false,
    "League Of Legend": false,
    "basket": false,
    "shopping": false,
    "programmation": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: HeaderLayout(
                choices: choices,
              ),
            ),
            Expanded(
              child: FooterLayout(
                choices: choices,
                callback: _onChoiceSelected,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChoiceSelected(String choice) {
    setState(() {
      print("before ${choices[choice]}");
      choices[choice] = choices[choice] == true ? false : true;
      print("after ${choices[choice]}");
    });
  }
}
