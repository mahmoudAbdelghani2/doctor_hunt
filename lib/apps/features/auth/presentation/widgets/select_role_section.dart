import 'package:doctor_hunt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/role_card_widget.dart';
import 'package:doctor_hunt/generated/image_assets.dart';

enum UserRole { patient, admin }

class SelectRoleSection extends StatelessWidget {
  final UserRole selectedRole;
  final ValueChanged<UserRole> onRoleSelected;

  const SelectRoleSection({
    super.key,
    required this.selectedRole,
    required this.onRoleSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoleCardItem(
          iconPath: kPatientIconPath,
          title: S.of(context).patient,
          subtitle: S.of(context).patientDesc,
          isSelected: selectedRole == UserRole.patient,
          onTap: () => onRoleSelected(UserRole.patient),
        ),

        SizedBox(height: 16.h),

        RoleCardItem(
          iconPath: kAdminIconPath,
          title: S.of(context).admin,
          subtitle: S.of(context).adminDesc,
          isSelected: selectedRole == UserRole.admin,
          onTap: () => onRoleSelected(UserRole.admin),
        ),
      ],
    );
  }
}
