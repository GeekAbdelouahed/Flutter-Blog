import 'package:flutter/material.dart';

class DoteWidget extends StatelessWidget {
  final bool isSelected;

  const DoteWidget({Key key, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelected ? 7 : 5,
      width: isSelected ? 7 : 5,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
