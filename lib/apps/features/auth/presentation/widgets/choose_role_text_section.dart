import 'package:doctor_hunt/generated/image_assets.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChooseRoleTextSection extends StatelessWidget {
  const ChooseRoleTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          kLogoPath,
          fit: BoxFit.contain,
          width: 70.w,
          height: 70.h,
        ),
        SizedBox(height: 11.h),
        Text(
          'Doctor Hunt',
          textAlign: TextAlign.center,
          style: context.bold26TextMain,
        ),
        SizedBox(height: 57.h),
        Text(
          S.of(context).chooseYourRole,
          textAlign: TextAlign.center,
          style: context.regular28TextMain,
        ),
        SizedBox(height: 8.h),
        Text(
          S.of(context).chooseRoleSubtitle,
          textAlign: TextAlign.center,
          maxLines: 3,
          style: context.regular14TextSub,
        ),
      ],
    );
  }
}
