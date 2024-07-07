import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key});

  @override
  Widget build(BuildContext context) {
      var cwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: cwidth*.18),
      child: FAProgressBar(
        maxValue: 100,
        size: 12,
        border: Border.all(width: 1, color: AppColors.cSucandryColor),
        borderRadius: BorderRadius.zero,
        animatedDuration: const Duration(seconds: 5),
        currentValue: 75,
        backgroundColor: AppColors.cSucandryColor,
        progressColor: AppColors.cMainColor,
      ),
    );
  }
}
