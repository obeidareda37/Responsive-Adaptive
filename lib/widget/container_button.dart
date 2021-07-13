import 'package:flutter/material.dart';

class ContainerButtonWidget extends StatelessWidget {
  Color colorContainer;
  Color colorText;
  String text;
  double height;
  double width;

  ContainerButtonWidget(
      {this.colorContainer,
      this.colorText,
      this.text,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorContainer,
      height: height,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: colorText),
        ),
      ),
    );
  }
}
