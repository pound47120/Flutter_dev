import 'package:barter_app01/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login app',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

