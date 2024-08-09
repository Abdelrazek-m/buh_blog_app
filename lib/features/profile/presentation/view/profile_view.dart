import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/profile_viewbody.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhiteColor,
      // backgroundColor: Colors.amber,
      body: const SafeArea(
          child:SingleChildScrollView(child: ProfileViewBody()),),
    );
  }
}
