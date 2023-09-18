import 'package:flutter/material.dart';
import 'package:tp1_flutter/choice_item.dart';

class FooterLayout extends StatelessWidget {
  const FooterLayout({super.key, this.choices = const {}, required this.callback});

  final Map<String, bool> choices;
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
          children: choices.entries
              .map((e) => ChoiceItem(
                    text: e.key,
                    isSelected: e.value,
                    onTap: () => _onItemSelect(e.key),
                  ))
              .toList(),
        ),
      ),
    );
  }

  void _onItemSelect(String choice) {
    callback(choice);
  }
}
