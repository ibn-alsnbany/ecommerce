import 'package:ecommerce/core/constant/routesname.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;

  int currentPage = 0;

  @override
  next() {
    currentPage++;

    if (currentPage > onboardinglist.length - 1) {
      Get.offAllNamed(Approutes.login);
    } else {}
    pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
