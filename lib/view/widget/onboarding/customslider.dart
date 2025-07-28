import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class Customslider extends StatelessWidget {
  const Customslider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
    );
  }
}
