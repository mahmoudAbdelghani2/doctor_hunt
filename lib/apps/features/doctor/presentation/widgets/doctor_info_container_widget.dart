import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorInfoContainerWidget extends StatelessWidget {
  const DoctorInfoContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 12,
                spreadRadius: 1,
                offset: const Offset(0, 4),
              ),
            ],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              children: [
                _buildDoctorInfo(context),
                SizedBox(height: 17.h),
                SizedBox(
                  width: 170.w,
                  height: 45.h,
                  child: CustomAppButton(onPressed: () {}, text: 'Book Now'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),
        Container(
          width: 305.w,
          height: 90.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 12,
                spreadRadius: 1,
                offset: const Offset(0, 4),
              ),
            ],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatsContainer(context, title: 'Running', value: '100'),
                _buildStatsContainer(context, title: 'Ongoing', value: '500'),
                _buildStatsContainer(context, title: 'Patients', value: '700'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _buildStatsContainer(
    BuildContext context, {
    required String title,
    required String value,
  }) {
    return Container(
      width: 70.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColors.textPlaceholder.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value, style: context.bold18Black),
          SizedBox(height: 5.h),
          Text(title, style: context.regular14TextSub),
        ],
      ),
    );
  }

  Row _buildDoctorInfo(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            ktestImagePath,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.contain,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dr. Shruti Kedia', style: context.bold18Black),
            SizedBox(height: 1.h),
            Text('Tooths Dentist', style: context.regular14TextSub),

            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(kStarIconPath, width: 12.w, height: 12.h),
                    SizedBox(width: 2.w),
                    SvgPicture.asset(kStarIconPath, width: 12.w, height: 12.h),
                    SizedBox(width: 2.w),
                    SvgPicture.asset(kStarIconPath, width: 12.w, height: 12.h),
                    SizedBox(width: 2.w),
                    SvgPicture.asset(kStarIconPath, width: 12.w, height: 12.h),
                    SizedBox(width: 2.w),
                    SvgPicture.asset(kStarIconPath, width: 12.w, height: 12.h),
                  ],
                ),
                SizedBox(width: 10.w),

                Text('\$ 28.00/hr', style: context.regular12TextSub),
              ],
            ),
          ],
        ),
        SvgPicture.asset(kLoveIconPath, width: 20.w, height: 20.h),
      ],
    );
  }
}
