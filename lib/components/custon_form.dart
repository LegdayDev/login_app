import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Email"),
          SizedBox(height: medium_gap),
          CustomTextFormField(text: "Password"),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //유효성검사
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("로그인"),
          ),
        ],
      ),
    );
  }
}
