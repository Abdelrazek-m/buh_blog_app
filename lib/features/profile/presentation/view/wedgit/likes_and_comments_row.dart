import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class LikesAndCommentRow extends StatelessWidget {
  final String text;
  final Icon icon;
  const LikesAndCommentRow({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(onTap: () {}, child: icon),
        Text(
          text,
          style: AppTextStyles.textStyle10,
        )
      ],
    );
  }
}
