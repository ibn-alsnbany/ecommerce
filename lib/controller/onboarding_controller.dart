import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnboardingControllerImp extends OnboardingController {
  int currentPage = 0;

  @override
  next() {}

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }
}
