import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PopularDoctorItem extends StatelessWidget {
  const PopularDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 190.w,
            height: 180.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: const DecorationImage(
                image: AssetImage(ktestImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text('Dr. John Doe', style: context.bold18Black),
          SizedBox(height: 5.h),
          Text('Cardiologist', style: context.regular12Black),
          SizedBox(height: 5.h),
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
        ],
      ),
    );
  }
}
