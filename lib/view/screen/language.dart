import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/routesname.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class Language extends GetView<LocaleControllar> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'.tr, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 20),
            Custombuttonlang(
              textbutton: 'Ar',
              onPressed: () {
                controller.changeLang('ar');
                Get.toNamed(Approutes.onboarding);
              },
            ),
            Custombuttonlang(
              textbutton: 'En',
              onPressed: () {
                controller.changeLang('en');
                Get.toNamed(Approutes.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
