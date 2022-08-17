import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: Container(
        child: Form(
          child: Column(
            children: [
              Text("Email"),
              TextFormField(),
              SizedBox(height: 20),
              Text("Password"),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
