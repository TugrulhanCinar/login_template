import 'package:flutter/material.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';
import 'package:login_template/core/extensions/context_extension.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String> save;
  final bool obscureText;

  CustomTextFormField({this.hintText, this.validator, required this.save, this.obscureText = false});

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) => textFormField;

  Widget get textFormField => TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffix: widget.obscureText ? textFormFieldSuffixIcon : null,
        ),
      );

  Widget get textFormFieldSuffixIcon => InkWell(
        child: CustomText(
          obscureText ? "Göster" : "Gizle",
          style: TextStyle(color: Colors.orange),
        ),
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
      );

  OutlineInputBorder get outlineInputBorder => OutlineInputBorder(
        borderRadius: context.containerBorderRadiusVeryLow,
        borderSide: BorderSide(
          width: 0,
          color: Colors.blue.withOpacity(0.1),
        ),
      );
}
