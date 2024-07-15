import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsetsGeometry.lerp(
              const EdgeInsets.all(1), const EdgeInsets.all(1), 0)),
          iconSize: const WidgetStatePropertyAll(20),
          elevation: const WidgetStatePropertyAll(0),
          backgroundColor: WidgetStatePropertyAll(AppColors.cWhiteColor)),
      onPressed: () {},
      iconAlignment: IconAlignment.end,
      icon: const Icon(
        Icons.arrow_circle_right_outlined,
      ),
      label: Text(
        "More",
        style: TextStyle(fontSize: 12, color: AppColors.cMainColor),
      ),
    );
  }
}
