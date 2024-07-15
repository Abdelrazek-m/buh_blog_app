import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class TopPosts extends StatelessWidget {
  const TopPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10
      ),
      padding: const EdgeInsets.only(left: 14, right: 14, top: 14, bottom: 2),
      width: 240,
      decoration: ShapeDecoration(
        color: AppColors.cWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            offset: Offset(2, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(AssetsData.pic1),
          Text(
            "Finally graduated!! Here is my graduation project... .",
            style:
                AppTextStyles.textStyle14.copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "June 17, 2022 ",
                    style: AppTextStyles.textStyle12Poppins700.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 141, 141, 148),
                    ),
                  ),
                  const Icon(
                    Icons.visibility,
                    color: Color.fromARGB(255, 141, 141, 148),
                    size: 16,
                  ),
                  Text(
                    "200",
                    style: AppTextStyles.textStyle12Poppins700.copyWith(
                      color: const Color.fromARGB(255, 141, 141, 148),
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: AppColors.cMainColor,
                    size: 22,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
