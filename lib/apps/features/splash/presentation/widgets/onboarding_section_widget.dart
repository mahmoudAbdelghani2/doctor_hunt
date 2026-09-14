import 'package:doctor_hunt/apps/features/splash/data/models/onboarding_model.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSectionWidget extends StatelessWidget {
  final OnboardingModel item;
  const OnBoardingSectionWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(height: 111.h),
            Container(
              width: 350.w,
              height: 350.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(item.image),

                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              item.title,
              style: context.bold24TextMain,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 11.h),
            Text(
              item.description,
              style: context.regular14TextSub,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
