import 'package:flutter/material.dart'; 

class SignupView extends StatefulWidget {
  @override
  SignupViewState createState() => new SignupViewState();
}

class SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: const Color(0xFFFFFFFF),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("First Name"),
              TextField(
                decoration: InputDecoration(
                  hintText: "type your first name here"
                )
              ),
              Text("Last Name"),
              TextField(
                decoration: InputDecoration(
                  hintText: "type your last name here"
                )
              ),
              Text("Phone Number"),
              TextField(
                decoration: InputDecoration(
                  hintText: "type your phone number here"
                )
              ),
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
              ),
              Text("Retype password"),
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