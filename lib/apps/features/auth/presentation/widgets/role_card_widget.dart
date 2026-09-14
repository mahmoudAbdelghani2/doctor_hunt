import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/style_atom.dart';

class RoleCardItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const RoleCardItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary.withValues(alpha: 0.08)
            : AppColors.primaryLight.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isSelected ? AppColors.primary : Colors.grey.shade300,
          width: isSelected ? 1.5 : 1.0,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12.r),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Row(
              children: [
                Container(
                  height: 48.r,
                  width: 48.r,
                  padding: EdgeInsets.all(12.r),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(iconPath),
                ),
                SizedBox(width: 16.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(title, style: context.semiBold20TextMain),
                          if (isSelected)
                            Container(
                              height: 25.r,
                              width: 25.r,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 20.r,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(subtitle, style: context.regular14TextSub),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
