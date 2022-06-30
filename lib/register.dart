import 'package:wedding_plane/home.dart';
import 'package:flutter/material.dart';
import 'package:wedding_plane/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                _iconRegister(),
                _titleDescription(),
                _textField(),
                _buildButton(context)
              ],
            ),
          )
        ],
      ),
    ));
  }

//wiget icon
  Widget _iconRegister() {
    return Image.asset(
      'assets/images/login.png',
      width: 300,
      height: 200,
    );
  }

//wiget titleDescription
  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16),
        ),
        Text(
          'Sign Up',
          style: TextStyle(color: Color(0xffCF9766), fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        Text(
          'Masukkan Username dan password anda.',
          style: TextStyle(fontSize: 12, color: Color(0xffCF9766)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

//wiget textfield untuk username dan pasword
  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffCF9766), width: 1.0),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCF9766), width: 2.5)),
            hintText: "Username",
            hintStyle: TextStyle(color: Color(0xffEED4BF)),
          ),
          style: TextStyle(color: Color(0xffCF9766)),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffCF9766), width: 1.0),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCF9766), width: 2.5)),
            hintText: "Password",
            hintStyle: TextStyle(color: Color(0xffEED4BF)),
          ),
          style: TextStyle(color: Color(0xffCF9766)),
          autofocus: false,
          obscureText: true,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffCF9766), width: 1.0),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffCF9766), width: 2.5)),
            hintText: "Confirm Password",
            hintStyle: TextStyle(color: Color(0xffEED4BF)),
          ),
          style: TextStyle(color: Color(0xffCF9766)),
          autofocus: false,
          obscureText: true,
        ),
      ],
    );
  }

//wiget untuk login dan register
  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        FlatButton(
          child: Text(
            'Masuk Akun',
            style: TextStyle(color: Color(0xffCF9766)),
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Haider();
            }));
          },
        ),
        Text(
          'or',
          style: TextStyle(
            color: Color(0xffCF9766),
            fontSize: 12,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Text(
          'Login With Goggle',
          style: TextStyle(color: Color(0xffCF9766)),
        ),
      ],
    );
  } 
}
