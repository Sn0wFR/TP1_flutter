import 'package:flutter/material.dart';
import 'package:tp1_flutter/choice_item.dart';

class FooterLayout extends StatelessWidget {
  const FooterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8,
          runSpacing: 4,
          children: [
            ChoiceItem(text: "cinema"),
            ChoiceItem(text: "petanque"),
            ChoiceItem(text: "fitness"),
            ChoiceItem(text: "League Of Legends"),
            ChoiceItem(text: "basket"),
            ChoiceItem(text: "shopping"),
            ChoiceItem(text: "programmation"),
          ],
        ),
      ),
    );
  }
}
