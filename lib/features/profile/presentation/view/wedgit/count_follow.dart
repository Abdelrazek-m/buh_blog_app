import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CountFollow extends StatelessWidget {
  final String numfollower;
  final String followName;

  const CountFollow({
    super.key,
    required this.numfollower,
    required this.followName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Text(
            followName,
            style: AppTextStyles.textStyle12Poppins700
                .copyWith(color: const Color(0xFF8C8D93)),
          ),
          Text(
            numfollower,
            style: AppTextStyles.textStyle16
                .copyWith(color: const Color(0xFF8C8D93)),
          ),
        ],
      ),
    );
  }
}
