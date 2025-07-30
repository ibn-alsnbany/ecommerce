import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title', style: TextStyle(fontSize: 20))),
      body: Container(child: Text('Login')),
    );
  }
}
