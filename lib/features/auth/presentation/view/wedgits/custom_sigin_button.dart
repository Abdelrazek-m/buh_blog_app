import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  final String title;
  const CustomSignInButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
          
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
            padding: WidgetStatePropertyAll(EdgeInsetsDirectional.all(14)),
            backgroundColor: WidgetStatePropertyAll(Color(0xFFFECF65))),
        onPressed: () {},
        child: Text(
          title,
          style: AppTextStyles.textStyle24
              .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
        ));
  }
}
