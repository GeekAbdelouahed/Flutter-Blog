import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'image.dart';

class ImagesWidget extends StatefulWidget {
  final Function(List<String>) onSelectImages;

  const ImagesWidget({Key key, this.onSelectImages}) : super(key: key);

  @override
  _ImagesWidgetState createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  List<String> _selectedImages = [];

  final _imagePicker = ImagePicker();

  void _addImage() async {
    final pickedImage = await _imagePicker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedImage == null) return;

    setState(() {
      _selectedImages.add(pickedImage.path);
    });

    widget.onSelectImages?.call(_selectedImages);
  }

  void _deleteImage(int index) async {
    setState(() {
      _selectedImages.removeAt(index);
    });

    widget.onSelectImages?.call(_selectedImages);
  }

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
              itemCount: _selectedImages.length + 1,
              itemBuilder: (_, index) => index < _selectedImages.length
                  ? ImageWidget(
                      path: _selectedImages[index],
                      onDelete: () {
                        _deleteImage(index);
                      },
                    )
                  : InkWell(
                      onTap: _addImage,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ),
                    ),
              separatorBuilder: (_, __) => const SizedBox(
                width: 10,
              ),
            ),
          ),
        ],
      );
}
