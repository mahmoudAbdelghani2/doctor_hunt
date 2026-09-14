import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/screens/choose_role_screen.dart';
import 'package:doctor_hunt/apps/features/splash/presentation/screens/onboarding_screen.dart';
import 'package:doctor_hunt/apps/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashPath,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kOnboardingPath,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kChooseRolePath,
        builder: (context, state) => const ChooseRoleScreen(),
      ),
      GoRoute(
        path: kLoginPath,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kSignupPath,
        builder: (context, state) => const ChooseRoleScreen(),
      ),
    ],
  );
}
