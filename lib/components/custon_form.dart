import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(),
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
