import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCategoryItem(
            iconPath: kToothIconPath,
            backgroundColor: AppColors.secondaryDark,
          ),
          SizedBox(width: 10.w),
          _buildCategoryItem(
            iconPath: kHeartIconPath,
            backgroundColor: AppColors.primary,
          ),
          SizedBox(width: 10.w),
          _buildCategoryItem(
            iconPath: kEyeIconPath,
            backgroundColor: Color(0xffFE7F44),
          ),
          SizedBox(width: 10.w),
          _buildCategoryItem(
            iconPath: kBodyIconPath,
            backgroundColor: Color(0xffFF484C),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem({
    required String iconPath,
    required Color backgroundColor,
  }) {
    return Stack(
      children: [
        Container(
          height: 90.h,
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: backgroundColor,
          ),
          child: Center(
            child: SvgPicture.asset(iconPath, width: 40.w, height: 40.h),
          ),
        ),
        Positioned(
          right: -50.w,
          child: Container(
            width: 90.w,
            height: 90.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        Positioned(
          bottom: -50.h,
          child: Container(
            width: 90.w,
            height: 90.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
      ],
    );
  }
}
