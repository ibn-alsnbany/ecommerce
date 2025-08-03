import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Title', style: TextStyle(fontSize: 20)),
      ),
      body: Container(child: Text('Login')),
    );
  }
}
