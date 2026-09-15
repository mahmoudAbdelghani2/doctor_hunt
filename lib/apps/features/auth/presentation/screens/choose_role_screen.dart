import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/choose_role_text_section.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/select_role_section.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  UserRole _selectedRole = UserRole.patient;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 20.w),
                child: Column(
                  children: [
                    ChooseRoleTextSection(),
                    SizedBox(height: 32.h),
                    SelectRoleSection(
                      selectedRole: _selectedRole,
                      onRoleSelected: (role) {
                        setState(() => _selectedRole = role);
                      },
                    ),
                    Spacer(),
                    CustomAppButton(
                      text: S.of(context).continueText,
                      onPressed: () {
                        GoRouter.of(context).pushReplacement(kSignupPath);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
