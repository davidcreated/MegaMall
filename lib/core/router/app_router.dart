import 'package:go_router/go_router.dart';
import 'package:megamall/features/product/presentation/pages/home.dart';
import 'package:megamall/features/product/presentation/pages/login.dart';
import 'package:megamall/features/product/presentation/pages/signup.dart';
import 'package:megamall/features/product/presentation/pages/reset_password.dart';
import 'package:megamall/features/product/presentation/pages/verification.dart';

class AppRouter {
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';
  static const String verification = '/verification';

  static final router = GoRouter(
    initialLocation: login,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: signup,
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: resetPassword,
        builder: (context, state) => const ResetPasswordPage(),
      ),
      GoRoute(
        path: verification,
        builder: (context, state) => const VerificationPage(),
      ),
    ],
  );
}
