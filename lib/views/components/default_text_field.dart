import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  late String hintText;
  late TextEditingController controller;
  TextInputType textInputType;
  String? Function(String?)? validator;

  DefaultTextField({
    required this.hintText,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: textInputType,
      controller: controller,
      validator: validator,
      decoration: InputDecoration().copyWith(
        hintText: hintText,
      ),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
