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
  final List<String> selectedChoices = [];

  final List<String> choices = [
    "cinema",
    "petanque",
    "fitness",
    "League Of Legend",
    "basket",
    "shopping",
    "programmation",
  ];

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
                choices: selectedChoices,
              ),
            ),
            Expanded(
              child: FooterLayout(
                choices: choices,
                selectedChoices: selectedChoices,
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
      selectedChoices.contains(choice)
          ? selectedChoices.remove(choice)
          : selectedChoices.add(choice);
    });
  }
}
