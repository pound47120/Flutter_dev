import 'package:flutter/material.dart';
import 'package:barter_app01/main_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Barter kub'),
      ),
      body: Stack(
        children:<Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                   image: AssetImage('assets/images/bg_login.png')
              )
            )
          )
        ]
      ),
    );
  }
}
