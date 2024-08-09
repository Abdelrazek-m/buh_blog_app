import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/routes.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_second_logo.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_sigin_button.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_text_field.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_textfield_google.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation = Tween(begin: const Offset(0, -.2), end: const Offset(0, 0))
        .animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var cwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: cwidth * .1, right: cwidth * .1),
      child: AnimatedBuilder(
        animation: slideAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: slideAnimation,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 100, right: 100, top: 215),
                  child: CustomSecondLogo(),
                ),
                const SizedBox(
                  height: 28,
                ),
                const CustomTextField(
                  label: "User Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  label: "Password",
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomSignInButton(
                  route: RoutesApp.profileView,
                  title: "Sign In",
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFieldGoogle(),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push(RoutesApp.signUpView);
                  },
                  child: Text(
                    "Don’t Have an Account? ",
                    style: AppTextStyles.textStyle24
                        .copyWith(color: AppColors.cWhiteColor, fontSize: 12),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
