import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:belajar_flutter/login.dart';
import 'package:wedding_plane/login.dart';
import 'package:wedding_plane/register.dart';

class Slide extends StatelessWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/rr.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/name.png',
                  width: 350,
                  height: 300,
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffCF9766),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: new Container(
                child: Text('Sign In'),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(color: Color(0xffCF9766), fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RegisterPage();
                                }));
                              }),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
