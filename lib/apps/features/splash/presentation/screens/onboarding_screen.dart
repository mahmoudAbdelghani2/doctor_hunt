import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/features/splash/data/models/onboarding_model.dart';
import 'package:doctor_hunt/apps/features/splash/presentation/widgets/buttons_section_widget.dart';
import 'package:doctor_hunt/apps/features/splash/presentation/widgets/onboarding_section_widget.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onNext() {
    if (_currentIndex < pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      GoRouter.of(context).pushReplacement(kChooseRolePath);
    }
  }

  void _onSkip() {
    GoRouter.of(context).pushReplacement(kChooseRolePath);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentIndex == pages.length - 1;
    final isSecondPage = _currentIndex == 1;
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          Positioned(
            top: -90.h,
            right: isSecondPage ? -150.w : 0.w,
            left: isSecondPage ? 0.w : -150.w,
            child: Container(
              width: 342.w,
              height: 342.h,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() => _currentIndex = index);
                    },
                    itemBuilder: (context, index) {
                      final item = pages[index];
                      return OnBoardingSectionWidget(item: item);
                    },
                  ),
                ),
                ButtonsSectionWidget(
                  onNext: _onNext,
                  onSkip: _onSkip,
                  isLastPage: isLastPage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
