import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/custom_main_button.dart';
 
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/custom_name_picture.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/following_block.dart';
import 'package:flutter/material.dart';
 

class CustomProfileUser extends StatelessWidget {
  const CustomProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    // var sized = MediaQuery.of(context).size;
    return Container(
        width: 428,
        height: 330,
        decoration: ShapeDecoration(
          color: AppColors.cWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
              offset: Offset(0, 2),
             
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            const CustomNameAndPicture(),
            const Divider(
              endIndent: 15,
              height: 6,
              indent: 15,
              color: Colors.black12,
              thickness: 2,
            ),
            const SizedBox(
              height: 14,
            ),
            const FollowingBlock(),
            const Divider(
              endIndent: 15,
              height: 22,
              indent: 15,
              color: Colors.black12,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    width: 8.54,
                    height: 7.82,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF5A3CB8),
                      shape: CircleBorder(),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "About Me",
                    style: AppTextStyles.textStyle12Poppins700.copyWith(
                        color: const Color(0xFF8C8D93), letterSpacing: 1),
                  )
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 24, right: 24, top: 5),
              child: Text(
                  style: AppTextStyles.textStyle12Poppins700.copyWith(
                      color: const Color(0xFF8C8D93), fontWeight: FontWeight.w400),
                  "I'm a full-stack web developer who uses the MERN stack. I also design user interfaces in Figma. I'm passionate about creating great digital experiences."),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(height: 45, width: 370, child: CustomMainButton())
          ],
        ));
  }
}

