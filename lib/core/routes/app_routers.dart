import 'package:go_router/go_router.dart';
import 'package:lezioni/features/auth/presentation/views/create_account_view.dart';
import 'package:lezioni/features/auth/presentation/views/sign_in_views.dart';

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
  ],
);
