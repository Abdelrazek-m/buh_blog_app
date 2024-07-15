import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)))),
            padding:
                const WidgetStatePropertyAll(EdgeInsetsDirectional.all(14)),
            backgroundColor: WidgetStatePropertyAll(AppColors.cMainColor)),
        onPressed: () {
          // GoRouter.of(context).push(route);
        },
        child: Text(
          "Edit my profile",
          style: AppTextStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.cWhiteColor,
          ),
        ));
  }
}
