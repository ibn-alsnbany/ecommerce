import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnboardingControllerImp extends OnboardingController {
  @override
  next() {}

  @override
  onPageChange(int index) {}
}
