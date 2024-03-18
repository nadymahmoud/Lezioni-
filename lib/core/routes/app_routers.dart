import 'package:go_router/go_router.dart';
import 'package:lezioni/features/auth/presentation/views/create_account_view.dart';
import 'package:lezioni/features/auth/presentation/views/sign_in_views.dart';
import 'package:lezioni/features/dash/presentation/views/home_view.dart';
import 'package:lezioni/features/loading/presentation/views/loading_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CreateAccountView(),
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: '/loadingView',
      builder: (context, state) => const LoadingView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    )
  ],
);
