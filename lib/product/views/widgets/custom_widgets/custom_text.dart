import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String txt;
  final TextStyle? style;

  const CustomText(this.txt, {this.style});

  @override
  Widget build(BuildContext context) => text;

  Text get text => Text(
        txt,
        style: style,
      );
}
