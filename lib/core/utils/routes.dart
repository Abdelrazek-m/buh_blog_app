import 'package:buh_blog_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:buh_blog_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:buh_blog_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class RoutesApp {
  static const homeView = "/homeView";
  static const signInView = "/signInView";
  static const signUpView = "/signUpView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: signInView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: Duration(seconds: 1),
            key: state.pageKey,
            child: const SignInView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                alwaysIncludeSemantics: true,
                opacity: animation,
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: signUpView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
         transitionDuration: Duration(seconds: 1),
            key: state.pageKey,
            child: const SignUpView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
               alwaysIncludeSemantics: true,
                opacity: animation,
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
 