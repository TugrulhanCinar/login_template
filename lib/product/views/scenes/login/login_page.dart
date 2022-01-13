import 'package:flutter/material.dart';
import 'package:login_template/product/models/data_models/user_model.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_textformfield.dart';

class LoginPageScene extends StatelessWidget {
  String? email, password;

  LoginPageScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: form,
    );
  }

  Widget get form => Form(child: formBody);

  Widget get formBody => Column(
        children: [
          getMailTextField,
          getPasswordTextField,
          MaterialButton(
            child: CustomText("txt"),
            onPressed: () {},
          )
        ],
      );

  Widget get getMailTextField => CustomTextFormField(
        hintText: "Mail",
        save: mailTextFormFieldSave,
      );

  Widget get getPasswordTextField => CustomTextFormField(
        hintText: "Şifre",
        save: mailTextFormFieldSave,
      );

  mailTextFormFieldSave(String? txt) => email = txt;

  passwordTextFormFieldSave(String txt) => password = txt;
}
