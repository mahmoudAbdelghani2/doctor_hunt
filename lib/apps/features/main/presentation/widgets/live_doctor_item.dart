import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LiveDoctorItem extends StatelessWidget {
  const LiveDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(ktestImagePath, fit: BoxFit.cover),
          ),
          SvgPicture.asset(kPlayIconPath, width: 35.w, height: 35.h),
          Positioned(
            top: 5.h,
            right: 5.w,
            child: Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Color(0xffFA002F),
                ),
                child: Padding(
                  padding: EdgeInsets.all(7.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(' Live', style: context.semiBold14White),
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
