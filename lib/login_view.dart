import 'package:flutter/material.dart'; 

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => new LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: const Color(0xFFFFFFFF),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Email Address"),
              TextField(
                decoration: InputDecoration(
                  hintText: "type your email here"
                )
              ),
              Text("Password"),
              TextField(
                decoration: InputDecoration(
                  hintText: "type your password here"
                )
              )
            ]
          )
        )
      )
    );
  }
}