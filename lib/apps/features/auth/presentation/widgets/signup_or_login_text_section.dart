import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignupOrLoginTextSection extends StatelessWidget {
  final String title;
  final String subtitle;
  const SignupOrLoginTextSection({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: context.semiBold24Black),
        SizedBox(height: 15.h),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: context.regular14TextSub,
        ),
        SizedBox(height: 67.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _customCardWidget(
              iconPath: kGoogleIconPath,
              title: "Google",
              context: context,
            ),
            _customCardWidget(
              iconPath: kFacebookIconPath,
              title: "Facebook",
              context: context,
            ),
          ],
        ),
      ],
    );
  }

  Card _customCardWidget({
    required String iconPath,
    required String title,
    required BuildContext context,
  }) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      borderOnForeground: true,
      shadowColor: Colors.grey.shade300,
      margin: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 17.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(iconPath, width: 20.w, height: 20.h),
                SizedBox(width: 12.w),
                Text(
                  title,
                  style: context.semiBold16TextSub,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
