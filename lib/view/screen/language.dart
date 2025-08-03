import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Custombuttonlang(textbutton: 'Ar', onPressed: () {}),
            Custombuttonlang(textbutton: 'En', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
