import 'package:flutter/material.dart';
import 'package:login_template/product/models/data_models/user_model.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_textformfield.dart';
import 'package:login_template/core/extensions/context_extension.dart';

class LoginPageScene extends StatelessWidget {
  String? email, password;

  LoginPageScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(child: formBody(context)),
    );
  }

  Widget formBody(BuildContext context) => Container(
        padding: context.paddingNormal,
        child: Column(
          children: [
            getMailTextField,
            getPasswordTextField,
            MaterialButton(
              color: Colors.green,
              child: CustomText("txt"),
              onPressed: () {},
            )
          ],
        ),
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
