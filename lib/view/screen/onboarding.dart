import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:ecommerce/view/widget/onboarding/custombutton.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: onboardinglist.length,
                itemBuilder:
                    (context, i) => Column(
                      children: [
                        Text(
                          onboardinglist[i].title!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 70),
                        Image.asset(
                          onboardinglist[i].image!,
                          width: 200,
                          height: 220,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 70),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onboardinglist[i].body!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 2.3,
                              color: AppColor.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onboardinglist.length,
                        (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: 5,
                          height: 6,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  const CustombuttonOnboarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
