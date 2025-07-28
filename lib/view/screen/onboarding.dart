import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  SizedBox(height: 90),
                  Image.asset(onboardinglist[i].image!),
                  SizedBox(height: 90),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onboardinglist[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 3),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
