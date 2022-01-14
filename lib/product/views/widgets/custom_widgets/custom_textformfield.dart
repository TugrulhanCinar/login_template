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
  Widget build(BuildContext context) => textFormField(context);

  Widget textFormField(BuildContext context) => TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: widget.hintText,
          labelStyle: Theme.of(context).textTheme.overline?.copyWith(color: Colors.red),
          suffix: widget.obscureText ? textFormFieldSuffixIcon : null,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
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
        // borderRadius: context.containerBorderRadiusVeryLow,
        borderSide: BorderSide(
          width: 0.3,
          color: Colors.red,
        ),
      );
}
