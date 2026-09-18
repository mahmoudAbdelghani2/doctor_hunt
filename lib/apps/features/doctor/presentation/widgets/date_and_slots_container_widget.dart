import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateAndSlotsContainerWidget extends StatelessWidget {
  final String date;
  final int availableSlots;
  final bool isSelected;
  const DateAndSlotsContainerWidget({
    super.key,
    required this.date,
    required this.availableSlots,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(12.r),
        border: !isSelected
            ? Border.all(color: Colors.grey.shade300, width: 1.w)
            : null,
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 12,
                  spreadRadius: 1,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Center(
          child: Column(
            children: [
              Text(
                date,
                style: isSelected
                    ? context.semiBold16White
                    : context.semiBold16Black,
              ),
              Text(
                availableSlots == 0
                    ? 'No slots available'
                    : '$availableSlots slots available',
                style: isSelected
                    ? context.regular14White
                    : context.regular12TextSub,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
