import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFieldGoogle extends StatelessWidget {
  const CustomTextFieldGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20))),
          padding: const WidgetStatePropertyAll(EdgeInsetsDirectional.all(10)),
          backgroundColor: WidgetStatePropertyAll(AppColors.cWhiteColor)),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign In Using Google  ",
            style: AppTextStyles.textStyle24.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          // SizedBox(width: ,)
          SizedBox(
              width: 30,
              height: 30,
              child: SvgPicture.asset(AssetsData.googleSvg))
        ],
      ),
    );
  }
}
