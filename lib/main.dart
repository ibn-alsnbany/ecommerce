import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/core/localization/transilation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/OnBoarding.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServieces();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleControllar controllar = Get.put(LocaleControllar());

    return GetMaterialApp(
      translations: MyTransilation(),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controllar.language,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineSmall: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.black,
          ),
          bodySmall: const TextStyle(
            height: 2.3,
            color: AppColor.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
