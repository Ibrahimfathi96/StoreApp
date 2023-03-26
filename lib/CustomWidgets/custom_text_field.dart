import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  String hintText;
  Function(String) onChanged;
  TextInputType? inputType;
  TextFormFieldWidget(
      {this.inputType,
      required this.hintText,
       required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      style: const TextStyle(color: Colors.black, fontSize: 18),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 20,color: Colors.black
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16), borderSide: BorderSide()),
      ),
    );
  }
}
