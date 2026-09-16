import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/features/main/presentation/widgets/category_list_widget.dart';
import 'package:doctor_hunt/apps/features/main/presentation/widgets/feature_doctor_listview.dart';
import 'package:doctor_hunt/apps/features/main/presentation/widgets/header_and_search_section.dart';
import 'package:doctor_hunt/apps/features/main/presentation/widgets/live_doctors_listview.dart';
import 'package:doctor_hunt/apps/features/main/presentation/widgets/popular_doctors_listview.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            const AppBackground(),
            Positioned(
              top: -120.h,
              left: 0.w,
              right: 0.w,
              child: Container(
                width: 156.w,
                height: 310.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.primary, Color(0xff07D9AD)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ),

            SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h),
                      HeaderAndSearchSection(),
                      SizedBox(height: 20.h),
                      Text('Live Doctors', style: context.bold18Black),
                      SizedBox(height: 10.h),
                      const LiveDoctorsListView(),
                      SizedBox(height: 30.h),
                      CategoryListWidget(),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Popular Doctors', style: context.bold18Black),
                          TextButton(
                            onPressed: () {
                              GoRouter.of(context).push(kFindDoctorPath);
                            },
                            child: Text(
                              'See All >',
                              style: context.regular14TextSub,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      const PopularDoctorsListView(),
                      SizedBox(height: 31.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Feature Doctor', style: context.bold18Black),
                          TextButton(
                            onPressed: () {
                              GoRouter.of(context).push(kFindDoctorPath);
                            },
                            child: Text(
                              'See All >',
                              style: context.regular14TextSub,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22.h),
                      const FeatureDoctorsListView(),
                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
