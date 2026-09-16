import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderAndSearchSection extends StatelessWidget {
  const HeaderAndSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi Handwerker!', style: context.semiBold20White),
                SizedBox(height: 5.h),
                Text('Find Your Doctor', style: context.bold26White),
              ],
            ),
            CircleAvatar(
              radius: 30.r,
              backgroundImage: AssetImage(ktestImagePath),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Card(
          elevation: 2,
          child: Container(
            width: double.infinity,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                SizedBox(width: 10.w),
                Icon(Icons.search, color: AppColors.textPlaceholder),
                SizedBox(width: 10.w),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: context.regular16TextSub,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.clear, color: AppColors.textPlaceholder),
                SizedBox(width: 10.w),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
