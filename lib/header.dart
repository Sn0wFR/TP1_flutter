import 'package:flutter/material.dart';
import 'package:tp1_flutter/choice_item.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({
    super.key,
    this.choices = const {},
  });

  final Map<String, bool> choices;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent.withOpacity(1),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
            child: SizedBox(
              height: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Vos choix :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: _drawChoice(),
          )
        ],
      ),
    );
  }

  Widget _drawChoice() {
    if (!choices.containsValue(true)) {
      return const Text(
        "Cliquez sur les choix en dessous !",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      );
    } else {
      return Wrap(
        direction: Axis.horizontal,
        spacing: 8,
        runSpacing: 4,
        children: choices.entries
            .where((element) => element.value)
            .map((e) => ChoiceItem(
              text: e.key,
            ))
            .toList(),
      );
    }
  }
}
