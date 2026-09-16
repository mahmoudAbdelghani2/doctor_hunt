import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/widgets/doctor_info_container_widget.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/widgets/doctor_services.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              GoRouter.of(context).pop();
                            },
                            child: Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 19.w),
                          Text(
                            'Doctor Details',
                            style: context.semiBold18Black,
                          ),
                          Spacer(),
                          Icon(Icons.search, color: AppColors.textSub),
                        ],
                      ),
                      SizedBox(height: 35.h),
                      DoctorInfoContainerWidget(),
                      SizedBox(height: 27.h),
                      const DoctorServices(),
                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
