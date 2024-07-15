import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/custom_circle_pic.dart';
import 'package:flutter/material.dart';

class CustomNameAndPicture extends StatelessWidget {
  const CustomNameAndPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          const CustomCirclePicture(
            horizontal: 14,
            vertical: 12,
            height: 70,width: 70,picture: AssetsData.profilepic,),
        Column(
          children: [
            Text(
              "Seif El-islam",
              style: AppTextStyles.textStyle20.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.cBlackColor),
            ),
            Row(
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Color(0xFF8C8D93),
                ),
                Text(
                  "Seif El-islam",
                  style: AppTextStyles.textStyle12Poppins700.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF8C8D93)),
                ),
              ],
            ),
          ],
        ),
        
        
        const Spacer(),
        IconButton(
            padding: const EdgeInsets.only(bottom: 25),
            onPressed: () {},
            icon: const Icon(
              
              Icons.more_horiz_outlined,
              size: 30,
            ))
      ],
    );
  }
}

