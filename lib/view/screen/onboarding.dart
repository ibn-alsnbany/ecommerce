import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:ecommerce/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce/view/widget/onboarding/customslider.dart';
import 'package:ecommerce/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp()); // حقن للاونبوردينج كونترولر امب
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Customslider()),

            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerOnboarding(),
                  Spacer(flex: 2),
                  CustombuttonOnboarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
