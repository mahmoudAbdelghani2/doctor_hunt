import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorItemWidget extends StatelessWidget {
  const DoctorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Next Available ', style: context.semiBold14Primary),
                    SizedBox(height: 5.h),
                    Text('10:00 AM tomorrow', style: context.semiBold12TextSub),
                  ],
                ),
                SizedBox(
                  width: 130.w,
                  height: 45.h,
                  child: CustomAppButton(onPressed: () {}, text: 'Book Now'),
                ),
              ],
            ),
          ],
        ),
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
            Text('Tooths Dentist', style: context.regular14Primary),
            SizedBox(height: 4.h),
            Text('7 Years experience', style: context.semiBold12TextSub),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 2.w),
                Text('87%', style: context.regular12TextSub),
                SizedBox(width: 10.w),
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 2.w),
                Text('69 Patient Stories', style: context.regular12TextSub),
              ],
            ),
          ],
        ),
        SvgPicture.asset(kLoveIconPath, width: 20.w, height: 20.h),
      ],
    );
  }
}
