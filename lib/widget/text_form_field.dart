import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget{
  String text;

  TextFormFieldWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: text),
    );
  }

}