import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class TitleOfPosts extends StatelessWidget {
  final String text;
  const TitleOfPosts({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          child: VerticalDivider(
            color: AppColors.cMainColor,
            thickness: 5,
          ),
        ),
        Text(
          text,
          style: AppTextStyles.textStyle18.copyWith(
              color: AppColors.cBlackColor, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
