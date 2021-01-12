import 'package:flutter/material.dart';

class AppDialogQuestion extends StatelessWidget {
  final String title;
  final String question;
  final List<Widget> actions;

  const AppDialogQuestion({
    Key key,
    this.title,
    @required this.question,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SimpleDialog(
        contentPadding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: title != null ? Text(title) : const SizedBox(),
        children: [
          Text(
            question,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 20,
          ),
          if (actions != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions,
            ),
        ],
      );
}
