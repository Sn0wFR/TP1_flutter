import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem(
      {super.key, required this.text, this.isSelected = false, this.onTap});

  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSelected ? Colors.orange : Colors.grey.withOpacity(0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
