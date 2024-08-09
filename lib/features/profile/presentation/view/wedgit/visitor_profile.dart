import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/all_rowcomment.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/custom_circle_pic.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/post_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 

class VisitorProfile extends StatelessWidget {
  const VisitorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var sized = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sized.width * .03),
      child: Column(
        children: [
          const PostTitle(),
          Row(
            children: [
              const CustomCirclePicture(
                horizontal: 1,
                vertical: 5,
                height: 50,
                width: 50,
                picture: AssetsData.fighter,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Islam Makachv",
                    style: AppTextStyles.textStyle20.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.cBlackColor),
                  ),
                  Text(
                    "23 December 2024, 11:30 am",
                    style: AppTextStyles.textStyle14.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF8C8D93)),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(AssetsData.twoFighter),
          const SizedBox(
            height: 5,
          ),
        const  AllRowComment()
        ],
      ),
    );
  }
}



