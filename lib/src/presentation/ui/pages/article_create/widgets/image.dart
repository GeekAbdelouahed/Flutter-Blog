import 'dart:io';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String path;
  final VoidCallback onDelete;

  const ImageWidget({Key key, @required this.path, this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1.5,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: path != null
                    ? Image.file(
                        File(path),
                        fit: BoxFit.cover,
                      )
                    : Icon(
                        Icons.image,
                        size: 70,
                        color: Colors.white,
                      ),
              ),
            ),
            PositionedDirectional(
              top: 5,
              end: 5,
              child: InkWell(
                onTap: onDelete,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.close),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
