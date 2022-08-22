import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          obscureText: (text == "Password") ? true : false,
          // validator: (value) =>
          //     value!.isEmpty ? "Please enter some text" : null,
          validator: (value) {
            if (text == "Passwrod") {
              if (value!.length <= 5) {
                return "길이가 짧습니다";
              } else if (value!.isEmpty) {
                return "Please enter some text";
              } else
                return null;
            } else if (text == "Email") {
              if (value!.length <= 10) {
                return "길이가 짧습니다";
              } else if (value!.isEmpty) {
                return "Please enter some text";
              } else
                return null;
            }
          },
          decoration: InputDecoration(
            hintText: "Enter ${text}",
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedErrorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}
