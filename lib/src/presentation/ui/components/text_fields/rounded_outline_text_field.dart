import 'package:flutter/material.dart';

class AppRoundedOutlineTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final IconData prefixIcon;
  final String hint;
  final bool obscureText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String Function(String) validator;

  const AppRoundedOutlineTextFormField({
    Key key,
    this.controller,
    this.prefixIcon,
    this.hint,
    this.obscureText = false,
    this.textInputAction,
    this.keyboardType,
    this.validator,
  }) : super(key: key);

  @override
  _AppRoundedOutlineTextFormFieldState createState() =>
      _AppRoundedOutlineTextFormFieldState();
}

class _AppRoundedOutlineTextFormFieldState
    extends State<AppRoundedOutlineTextFormField> {
  bool _isObscureText;

  @override
  void initState() {
    super.initState();
    _isObscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) => TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        obscureText: _isObscureText,
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon:
              widget.obscureText ? _buildObscureIcon() : const SizedBox(),
          hintText: widget.hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  Widget _buildObscureIcon() => IconButton(
        onPressed: () {
          setState(() {
            _isObscureText = !_isObscureText;
          });
        },
        icon: Icon(
          _isObscureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
        ),
      );
}
