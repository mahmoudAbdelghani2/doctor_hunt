import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonsSectionWidget extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final bool isLastPage;
  const ButtonsSectionWidget({
    super.key,
    required this.onNext,
    required this.onSkip,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: Column(
        children: [
          CustomAppButton(
            text: isLastPage ? S.of(context).getStarted : S.of(context).next,
            onPressed: onNext,
          ),
          SizedBox(height: 12.h),
          TextButton(
            onPressed: onSkip,
            child: Text(S.of(context).skip, style: context.regular14TextSub),
          ),
        ],
      ),
    );
  }
}
