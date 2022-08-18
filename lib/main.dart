import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context는 MyApp의 하위위젯으로 context를 상속
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
