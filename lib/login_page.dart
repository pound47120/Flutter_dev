import 'package:barter_app01/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState ();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage('assets/images/Capture.png')
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                  SizedBox(
                    height: 150.0,
                  ),
                  TextFormField(
                    validator: (String value){
                      if (value.isEmpty) return 'กรุณาระบุชื่อผู้ใช้งาน';
                    },
                    controller: ctrlUsername,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 20.0),
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Username',
                      labelStyle: TextStyle(fontSize: 20.0),
                      filled: true,
                      fillColor: Colors.white70,
                        border: InputBorder.none),
                  ),
                  SizedBox(height: 15.0,
                  ),
                  TextFormField(
                    validator: (String value){
                      if (value.isEmpty) return 'กรุณาระบุรหัสผ่่าน';
                    },
                    controller: ctrlPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 20.0),
                      prefixIcon: Icon(Icons.vpn_key),
                      labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 20.0),
                        filled: true,
                        fillColor: Colors.white70,
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () => doLogin(),
                        color: Colors.pinkAccent,
                        child: Text('Login'),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.green,
                        child: Text('New Register'),
                      ),
                    ],
                  ),
                  FlatButton(onPressed: () {},
                      child: Text('Help me please?',style: TextStyle(fontSize: 20.0,
                          color: Colors.white,fontWeight: FontWeight.bold
                      ),)
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }

  doLogin() {

    if(_formKey.currentState.validate()) {
      String username = ctrlUsername.text;
      String password = ctrlPassword.text;

      if (username == 'Admin' && password == 'admin') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainPage()));
      } else {
        print('Invalid username/password!');
      }
    }

  }
}