import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  const ChoiceItem({super.key, required this.text});

  final String text;

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  
  Color _color = Colors.grey.withOpacity(0.30);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: _color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(widget.text),
        ),
      ),
    );
  }

  void _onTap(){
    setState(() {
      _color = _color == Colors.orange ? Colors.grey.withOpacity(0.30) : Colors.orange;
    });
  }
}
