import 'package:flutter/material.dart';

import 'image.dart';

class ImagesWidget extends StatefulWidget {
  @override
  _ImagesWidgetState createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  List _selectedImages = List(5);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Select Images',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _selectedImages.length,
              itemBuilder: (_, index) => ImageWidget(),
              separatorBuilder: (_, __) => const SizedBox(
                width: 10,
              ),
            ),
          ),
        ],
      );
}
