import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustombuttonOnboarding extends StatelessWidget {
  const CustombuttonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        onPressed: () {},
        color: AppColor.primaryColor,
        child: const Text('Continue'),
      ),
    );
  }
}
