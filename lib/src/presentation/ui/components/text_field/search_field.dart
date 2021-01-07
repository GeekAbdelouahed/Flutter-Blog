import 'dart:async';

import 'package:flutter/material.dart';

import '../buttons/clear_button.dart';

class SearchFieldWidget extends StatefulWidget {
  final Function(String) onChanged;
  final TextStyle textStyle;
  final InputDecoration inputDecoration;
  final bool autoFocus;
  final Duration textChangeDuration;
  final Widget clearButton;
  final bool showClearButton;
  final int minSearchCharacters;

  const SearchFieldWidget({
    Key key,
    this.onChanged,
    this.inputDecoration,
    this.textStyle,
    this.autoFocus = true,
    this.textChangeDuration = const Duration(milliseconds: 500),
    this.clearButton,
    this.showClearButton = true,
    this.minSearchCharacters = 2,
  }) : super(key: key);

  @override
  _SearchFieldWidgetState createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  TextEditingController _textEditingController = TextEditingController();
  Timer _timer;

  bool _isClearButtonVisible = false;

  void _onChanged() {
    if (_textEditingController.text.length < widget.minSearchCharacters) return;

    if (_timer?.isActive ?? false) {
      _timer?.cancel();
      _timer = null;
    }
    _timer = Timer(widget.textChangeDuration, () {
      widget.onChanged?.call(_textEditingController.text);
    });
  }

  @override
  void initState() {
    super.initState();

    _textEditingController.addListener(() {
      if (_textEditingController.text.isNotEmpty && !_isClearButtonVisible)
        setState(() {
          _isClearButtonVisible = true;
        });
      else if (_textEditingController.text.isEmpty && _isClearButtonVisible)
        setState(() {
          _isClearButtonVisible = false;
        });
    });
  }

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey[400],
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextField(
              onChanged: (_) {
                _onChanged();
              },
              style: widget.textStyle ??
                  TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
              decoration: widget.inputDecoration ??
                  InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 18,
                    ),
                    border: InputBorder.none,
                  ),
              controller: _textEditingController,
              autofocus: widget.autoFocus ?? true,
              textInputAction: TextInputAction.search,
            ),
          ),
          if (widget.showClearButton)
            Visibility(
              visible: _isClearButtonVisible,
              child: ClearButtonWidget(
                onPressed: () {
                  _textEditingController.clear();
                },
                child: widget.clearButton,
              ),
            ),
        ],
      );

  @override
  void dispose() {
    _textEditingController.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
