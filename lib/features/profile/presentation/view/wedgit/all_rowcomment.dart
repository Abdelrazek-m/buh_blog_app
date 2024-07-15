import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/likes_and_comments_row.dart';
 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllRowComment extends StatelessWidget {
  const AllRowComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            LikesAndCommentRow(
              icon: Icon(
                size: 20,
                Icons.favorite,
                color: AppColors.cMainColor,
              ),
              text: "1000",
            ),
            const SizedBox(
              width: 14,
            ),
            LikesAndCommentRow(
              icon: Icon(
                size: 20,
                FontAwesomeIcons.comment,
                color: AppColors.cMainColor,
              ),
              text: " 200",
            ),
            const SizedBox(
              width: 14,
            ),
            LikesAndCommentRow(
              icon: Icon(
                size: 20,
                Icons.visibility,
                color: AppColors.cMainColor,
              ),
              text: "300",
            ),
          ],
        ),
        SizedBox(
          width: 73,
          height: 23,
          child: TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.cMainColor),
                      borderRadius: BorderRadius.circular(22))),
              onPressed: () {},
              child: Text(
                "Sport",
                style: AppTextStyles.textStyle10
                    .copyWith(color: AppColors.cMainColor),
              )),
        )
      ],
    );
  }
}