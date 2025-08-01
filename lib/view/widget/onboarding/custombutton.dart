import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustombuttonOnboarding extends GetView<OnboardingControllerImp> {
  const CustombuttonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        child: const Text('Continue'),
      ),
    );
  }
}
