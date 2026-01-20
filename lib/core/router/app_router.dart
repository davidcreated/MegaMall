import 'package:go_router/go_router.dart';
import 'package:megamall/features/product/presentation/pages/home.dart';
import 'package:megamall/features/product/presentation/pages/signup.dart';

class AppRouter {
  static const String home = '/';
  static const String signup = '/signup';

  static final router = GoRouter(
    initialLocation: signup,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: signup,
        builder: (context, state) => const SignupPage(),
      ),
    ],
  );
}
