import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/routes.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_second_logo.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_sigin_button.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_text_field.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/custom_textfield_google.dart';
import 'package:buh_blog_app/features/auth/presentation/view/wedgits/gender_type.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween(begin: const Offset(0,.51), end: const Offset(0, 0))
        .animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var cwidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(left: cwidth * .1, right: cwidth * .1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedBuilder(
                animation: slidingAnimation,
                builder: (context, _) {
                  return SlideTransition(
                    position: slidingAnimation,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 100, right: 100, top: 90),
                          child: CustomSecondLogo(),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        const CustomTextField(label: "Name"),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(label: "User Name"),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(label: "Email"),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomTextField(label: "Password"),
                        const SizedBox(
                          height: 11,
                        ),
                        Text("Gender",
                            style: AppTextStyles.textStyle24.copyWith(
                                color: AppColors.cWhiteColor, fontSize: 15)),
                        const GenderType(),
                      ],
                    ),
                  );
                }),
                  const SizedBox(
            height: 20,
          ),
            const CustomSignInButton(
                route: RoutesApp.signInView,
              title: "Sign Up",
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
                GoRouter.of(context).push(RoutesApp.signInView);
              },
              child: Text(
                "Already Have an Account? ",
                style: AppTextStyles.textStyle24
                    .copyWith(color: AppColors.cWhiteColor, fontSize: 12),
              ),
            ),
          ],
        ));
  }
}
