import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/components/custon_form.dart';
import 'package:login_app/size.dart';
import '../components/custom_text_form_field.dart';
import '../components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: xlarge_gap,
            ),
            const Logo("Login"),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
