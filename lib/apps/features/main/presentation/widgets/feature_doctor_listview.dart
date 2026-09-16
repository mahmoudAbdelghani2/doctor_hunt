import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FeatureDoctorsListView extends StatelessWidget {
  const FeatureDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: 140.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          kLoveIconPath,
                          width: 20.w,
                          height: 20.h,
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          kStarIconPath,
                          width: 20.w,
                          height: 20.h,
                        ),
                        SizedBox(width: 5.w),
                        Text('4.9', style: context.bold14Black),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      width: 54.w,
                      height: 54.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(ktestImagePath, fit: BoxFit.contain),
                    ),
                    SizedBox(height: 10.h),
                    Text('Dr. Crick', style: context.bold14Black),
                    SizedBox(height: 5.h),
                    Text('\$ 25.00/ hours', style: context.regular12TextSub),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
