import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custombuttonlang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;

  const Custombuttonlang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100),
        color: AppColor.primaryColor,
        onPressed: onPressed,

        child: Text(textbutton, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
