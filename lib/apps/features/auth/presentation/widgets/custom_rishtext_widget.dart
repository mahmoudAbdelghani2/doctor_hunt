import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRishTextWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text1;
  final String text2;
  const CustomRishTextWidget({
    super.key,
    required this.onTap,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: context.regular14TextSub.copyWith(color: AppColors.primary),
        children: [
          TextSpan(
            text: text2,
            style: context.regular14TextSub.copyWith(
              color: AppColors.primary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
