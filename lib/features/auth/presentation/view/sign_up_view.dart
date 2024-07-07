import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cMainColor,
      body: const SingleChildScrollView(child: SignupViewBody()),
    );
  }
}
