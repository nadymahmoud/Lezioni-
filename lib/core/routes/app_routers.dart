import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lezioni/features/auth/presentation/views/create_account_view.dart';
import 'package:lezioni/features/auth/presentation/views/sign_in_views.dart';
import 'package:lezioni/features/dash/presentation/views/home_view.dart';
import 'package:lezioni/features/dash/presentation/views/sky_right_now_view.dart';
import 'package:lezioni/features/dash/presentation/widgets/sky_right_now_full_screen_widget.dart';
import 'package:lezioni/features/loading/presentation/views/loading_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              fullscreenDialog: true,
              transitionDuration: Duration(milliseconds: 600),
              key: state.pageKey,
              child: const CreateAccountView(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                      child) =>
                  FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInCirc)
                          .animate(animation),
                      child: child),
            )),
    GoRoute(
        path: '/sign_in',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              fullscreenDialog: true,
              transitionDuration: Duration(milliseconds: 600),
              key: state.pageKey,
              child: const SignInView(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                      child) =>
                  FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInCirc)
                          .animate(animation),
                      child: child),
            )),
    GoRoute(
        path: '/loadingView',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              transitionDuration: Duration(milliseconds: 600),
              key: state.pageKey,
              child: const LoadingView(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                      child) =>
                  FadeTransition(
                      opacity:
                          CurveTween(curve: Curves.easeIn).animate(animation),
                      child: child),
            )),
    GoRoute(
        path: '/homeView',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              transitionDuration: Duration(milliseconds: 600),
              key: state.pageKey,
              child: const HomeView(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                      child) =>
                  FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOut)
                          .animate(animation),
                      child: child),
            )),
    GoRoute(
        path: '/skyRightNow',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              transitionDuration: Duration(milliseconds: 600),
              key: state.pageKey,
              child: const SkyRightNowView(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                      child) =>
                  FadeTransition(
                      opacity:
                          CurveTween(curve: Curves.easeIn).animate(animation),
                      child: child),
            )),
    GoRoute(
        path: '/skyRightNowFullScreen',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              transitionDuration: Duration(milliseconds: 600),
              key: state.pageKey,
              child: const SkyRightNowFullScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation,
                      child) =>
                  FadeTransition(
                      opacity:
                          CurveTween(curve: Curves.easeIn).animate(animation),
                      child: child),
            ))
  ],
);
