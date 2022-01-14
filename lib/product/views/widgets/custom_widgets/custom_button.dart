import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? txt;
  final Color? color;

  const CustomButton({this.onPressed, this.txt, this.color});

  @override
  Widget build(BuildContext context) {
    return _button;
  }

  Widget get _button => MaterialButton(
        color: color,
        child: CustomText(txt ?? ""),
        onPressed: onPressed,
      );
}
