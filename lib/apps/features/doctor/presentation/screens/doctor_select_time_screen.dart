import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/widgets/doctor_select_time_header_widget.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/widgets/select_data_section.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DoctorSelectTimeScreen extends StatelessWidget {
  const DoctorSelectTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.r),
                  child: Column(
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
                          Text('Select Time', style: context.semiBold18Black),
                        ],
                      ),
                      SizedBox(height: 35.h),
                      const DoctorSelectTimeHeaderWidget(),
                      SizedBox(height: 24.h),
                      const SelectDateSection(),
                      SizedBox(height: 30.h),
                      CustomAppButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        text: 'Confirm Booking',
                      ),
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
