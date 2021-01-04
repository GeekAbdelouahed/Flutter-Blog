import 'package:flutter/material.dart';

import 'dote.dart';

class IndicatorWidget extends StatelessWidget {
  final int length;
  final ValueNotifier<int> indexNotifier;

  const IndicatorWidget({
    Key key,
    @required this.length,
    @required this.indexNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (_, value, __) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            length,
            (index) => DoteWidget(
              isSelected: value == index,
            ),
          ),
        ),
      );
}
