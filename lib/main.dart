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
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Column(
            children: [
              Expanded(
                flex: 2,
                child: HeaderLayout(),
              ),
              Expanded(
                child: FooterLayout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
