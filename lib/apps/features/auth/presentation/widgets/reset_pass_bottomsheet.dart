import 'package:doctor_hunt/apps/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/generated/style_atom.dart';

class ResetPasswordFlowBottomSheet extends StatefulWidget {
  const ResetPasswordFlowBottomSheet({super.key});

  @override
  State<ResetPasswordFlowBottomSheet> createState() =>
      _ResetPasswordFlowBottomSheetState();
}

class _ResetPasswordFlowBottomSheetState
    extends State<ResetPasswordFlowBottomSheet> {
  int _currentStep = 0;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _newPassController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep < 2) {
      setState(() => _currentStep++);
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 16.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 48.w,
                height: 5.h,
                margin: EdgeInsets.only(bottom: 24.h),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3.r),
                ),
              ),
            ),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: _buildCurrentStepView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentStepView() {
    switch (_currentStep) {
      case 0:
        return _buildEmailStep();
      case 1:
        return _buildOtpStep();
      case 2:
      default:
        return _buildNewPasswordStep();
    }
  }

  Widget _buildEmailStep() {
    return Column(
      key: const ValueKey(0),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Forgot password', style: context.bold24Black),
        SizedBox(height: 12.h),
        Text(
          'Enter your email for the verification proccesss,we will send 4 digits code to your email.',
          style: context.regular14TextSub,
        ),
        SizedBox(height: 36.h),
        CustomTextFormField(
          labelText: 'Email',
          controller: _emailController,
          isPassword: false,
        ),
        SizedBox(height: 24.h),
        CustomAppButton(text: 'Continue', onPressed: _nextStep),
        SizedBox(height: 24.h),
      ],
    );
  }

  Widget _buildOtpStep() {
    return Column(
      key: const ValueKey(1),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Enter 4 Digits Code', style: context.bold24Black),
        SizedBox(height: 12.h),
        Text(
          'Enter the 4 digits code that you received on your email.',
          style: context.regular14TextSub,
        ),
        SizedBox(height: 24.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) => _otpBox(index)),
        ),

        SizedBox(height: 36.h),
        CustomAppButton(text: 'Continue', onPressed: _nextStep),
        SizedBox(height: 24.h),
      ],
    );
  }

  Widget _buildNewPasswordStep() {
    return Column(
      key: const ValueKey(2),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Reset Password', style: context.bold24Black),
        SizedBox(height: 12.h),
        Text(
          'Set the new password for your account so you can login and access all the features.',
          style: context.regular14TextSub,
        ),
        SizedBox(height: 27.h),
        CustomTextFormField(
          labelText: 'New Password',
          controller: _newPassController,
          isPassword: true,
        ),
        SizedBox(height: 18.h),
        CustomTextFormField(
          labelText: 'Re-enter Password',
          controller: _confirmPassController,
          isPassword: true,
        ),
        SizedBox(height: 24.h),
        CustomAppButton(text: 'Update Password', onPressed: _nextStep),
        SizedBox(height: 24.h),
      ],
    );
  }

  Widget _otpBox(int index) {
    return Container(
      width: 54.w,
      height: 54.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        index < 3 ? '${index + 3}' : '',
        style: context.semiBold20Primary,
      ),
    );
  }
}
