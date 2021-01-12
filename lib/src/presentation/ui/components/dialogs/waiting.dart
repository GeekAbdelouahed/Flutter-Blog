import 'package:flutter/material.dart';

class AppDialogWaiting extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Dialog(
        //contentPadding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            children: [
              CircularProgressIndicator(),
              const SizedBox(
                width: 20,
              ),
              Text('Please Wait...'),
            ],
          ),
        ),
      );
}
