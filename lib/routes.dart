import 'package:ecommerce/core/constant/routesname.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const Login(),
  Approutes.onboarding: (context) => const OnBoarding(),
};
