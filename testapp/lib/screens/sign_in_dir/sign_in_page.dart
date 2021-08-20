import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/services/Auth.dart';

class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SigninWidget - FRAME
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(),
        image_Google(),
        Text(
          "",
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              //color: Colors.black,
              fontFamily: 'Roboto',
              fontSize: 24,
              letterSpacing:
                  2 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.bold,
              height: 1),
        ),
        Text(
          "",
          style: TextStyle(fontSize: 8),
        ),
        // Figma Flutter Generator SigninwithgoogleusingfirebaseWidget - TEXT
        Text(
          'Sign-in with Google using Firebase',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              // color: Colors.black,
              fontFamily: 'Roboto',
              fontSize: 14,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        ),
        Spacer(),
        Center(
            // ignore: deprecated_member_use
            child: RaisedButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            final provider = Provider.of<Auth>(context, listen: false);
            provider.login();
          },
          child: signInButton(),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(26))),
        )),
        Spacer(),
      ],
    );
  }
}

// Figma Flutter Generator G_logoWidget - RECTANGLE
// ignore: non_constant_identifier_names
Widget image_Google() => Container(
      width: 126,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/logo/g_logo.png'), fit: BoxFit.contain),
      ),
    );

// Figma Flutter Generator Group4Widget - GROUP
Widget signInButton() => Container(
    width: 309,
    height: 43,
    child: Stack(children: <Widget>[
      Positioned(
          top: 0,
          left: 0,
          child: Container(
              width: 309,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26),
                  topRight: Radius.circular(26),
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                ),
                color: Color.fromRGBO(33, 79, 195, 1),
              ))),
      Positioned(
          top: 3,
          left: 3,
          child: Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo/g_logo.png'),
                    fit: BoxFit.fitWidth),
              ))),
      Positioned(
          top: 14,
          left: 80,
          child: Text(
            'SIGN IN WITH GOOGLE',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Roboto',
                fontSize: 14,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          )),
    ]));
