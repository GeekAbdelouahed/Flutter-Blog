import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          height: 25,
          width: 25,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
          ),
        ),
      );
}
