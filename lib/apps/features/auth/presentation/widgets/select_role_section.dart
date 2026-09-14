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
          title: 'Patient',
          subtitle:
              'Find doctors, book appointments, and manage your medical records.',
          isSelected: selectedRole == UserRole.patient,
          onTap: () => onRoleSelected(UserRole.patient),
        ),

        SizedBox(height: 16.h),

        RoleCardItem(
          iconPath: kAdminIconPath,
          title: 'Admin',
          subtitle: 'Manage doctors, appointments, users, and the platform.',
          isSelected: selectedRole == UserRole.admin,
          onTap: () => onRoleSelected(UserRole.admin),
        ),
      ],
    );
  }
}
