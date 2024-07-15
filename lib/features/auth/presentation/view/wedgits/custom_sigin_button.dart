import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSignInButton extends StatelessWidget {
  final String title;
  final String route;
  const CustomSignInButton(
      {super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
            padding: WidgetStatePropertyAll(EdgeInsetsDirectional.all(14)),
            backgroundColor: WidgetStatePropertyAll(Color(0xFFFECF65))),
        onPressed: () {
          GoRouter.of(context).push(route);
        },
        child: Text(
          title,
          style: AppTextStyles.textStyle24
              .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
        ));
  }
}
