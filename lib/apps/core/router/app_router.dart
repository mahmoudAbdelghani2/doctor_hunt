import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/screens%20for%20test/test_screen.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/screens/choose_role_screen.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/screens/login_screen.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/screens/signup_screen.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/select_role_section.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/screens/doctor_details_screen.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/screens/doctor_select_time_screen.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/screens/find_doctor_screen.dart';
import 'package:doctor_hunt/apps/features/main/presentation/screens/home_screen.dart';
import 'package:doctor_hunt/apps/features/main/presentation/screens/main_screen.dart';
import 'package:doctor_hunt/apps/features/splash/presentation/screens/onboarding_screen.dart';
import 'package:doctor_hunt/apps/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: kSplashPath,
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
        builder: (context, state) {
          final userRole = (state.extra as UserRole?) ?? UserRole.patient;
          return LoginScreen(userRole: userRole);
        },
      ),
      GoRoute(
        path: kSignupPath,
        builder: (context, state) => const SigupScreen(),
      ),

      GoRoute(
        path: kFindDoctorPath,
        builder: (context, state) => const FindDoctorScreen(),
      ),

      GoRoute(
        path: kDoctorDetailsPath,
        builder: (context, state) => const DoctorDetailsScreen(),
      ),

      GoRoute(
        path: kDoctorSelectTimePath,
        builder: (context, state) => const DoctorSelectTimeScreen(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: kMainPath,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/favorites',
                builder: (context, state) =>
                    const TestScreen(screenName: 'Favorites'),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/records',
                builder: (context, state) =>
                    const TestScreen(screenName: 'Records'),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                builder: (context, state) =>
                    const TestScreen(screenName: 'Chat'),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
