import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorServices extends StatelessWidget {
  const DoctorServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Services', style: context.semiBold18Black),
        SizedBox(height: 17.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1.   ', style: context.regular14Primary),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                'Patient care should be the number one priority.',
                style: context.semiBold14Black,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),

        Divider(height: 20.h, color: AppColors.textSub, thickness: 0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2.   ', style: context.regular14Primary),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                'If you run your practiceyou know how frustrating.',
                style: context.semiBold14Black,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Divider(height: 20.h, color: AppColors.textSub, thickness: 0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('3.   ', style: context.regular14Primary),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                'That’s why some of appointment reminder system.',
                style: context.semiBold14Black,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 12,
                spreadRadius: 1,
                offset: const Offset(0, 4),
              ),
            ],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          //clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Image.asset(
              kLocationMapPath,
              width: double.infinity,
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
