import 'package:flutter/material.dart';
import 'package:tp1_flutter/choice_item.dart';

class FooterLayout extends StatelessWidget {
  const FooterLayout(
      {super.key,
      this.choices = const [],
      this.selectedChoices = const [],
      required this.callback});

  final List<String> choices;
  final List<String> selectedChoices;
  final Function(String choice) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8,
          runSpacing: 4,
          children: choices
              .map((choiceText) => ChoiceItem(
                    text: choiceText,
                    onTap: () => _onChoiceSelected(choiceText),
                    isSelected: selectedChoices.contains(choiceText),
                  ))
              .toList(),
        ),
      ),
    );
  }

  void _onChoiceSelected(String choiceText) {
    callback(choiceText);
  }
}
