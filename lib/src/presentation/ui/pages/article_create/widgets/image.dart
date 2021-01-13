import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.image,
          size: 70,
          color: Colors.white,
        ),
      );
}
