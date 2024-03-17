import 'package:go_router/go_router.dart';
import 'package:lezioni/features/auth/presentation/views/create_account_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CreateAccountView(),
    ),
  ],
);
