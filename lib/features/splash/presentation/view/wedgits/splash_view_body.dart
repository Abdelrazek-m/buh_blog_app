import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:buh_blog_app/core/utils/routes.dart';
import 'package:buh_blog_app/features/splash/presentation/view/wedgits/loading_bar.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
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
    slidingAnimation =
        Tween(begin: const Offset(0, -.32), end: const Offset(0, 0))
            .animate(_animationController);
    _animationController.forward();

    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push(RoutesApp.signInView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, snapshot) {
                return SlideTransition(
                    position: slidingAnimation,
                    child: Image.asset(AssetsData.logo, height: 156));
              }),
          const LoadingBar(),
        ],
      ),
    );
  }
}
