import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customslider extends GetView<OnboardingControllerImp> {
  const Customslider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChange(val);
      },
      itemCount: onboardinglist.length,
      itemBuilder:
          (context, i) => Column(
            children: [
              Text(
                onboardinglist[i].title!,
                style: Theme.of(context).textTheme.headlineSmall,
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
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
    );
  }
}
