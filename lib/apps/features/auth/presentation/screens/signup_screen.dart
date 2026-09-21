import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_text_form_field.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/custom_rishtext_widget.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/signup_or_login_text_section.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SigupScreen extends StatefulWidget {
  const SigupScreen({super.key});

  @override
  State<SigupScreen> createState() => _SigupScreenState();
}

class _SigupScreenState extends State<SigupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 140.h, left: 20.w, right: 20.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SignupOrLoginTextSection(
                          title: S.of(context).joinUs,
                          subtitle: S.of(context).authSubtitle,
                        ),
                        SizedBox(height: 34.h),
                        CustomTextFormField(
                          controller: _nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          labelText: S.of(context).name,
                          isPassword: false,
                        ),
                        SizedBox(height: 18.h),
                        CustomTextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          labelText: S.of(context).email,
                          isPassword: false,
                        ),
                        SizedBox(height: 18.h),
                        CustomTextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          labelText: S.of(context).password,
                          isPassword: true,
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              S.of(context).termsAndPrivacy,
                              style: context.regular12TextSub,
                            ),
                          ],
                        ),
                        SizedBox(height: 55.h),
                        CustomAppButton(
                          text: S.of(context).signUp,
                          onPressed: () {
                            GoRouter.of(context).pushReplacement(kMainPath);
                          },
                        ),
                        SizedBox(height: 17.h),
                        CustomRishTextWidget(
                          text1: "${S.of(context).haveAccount} ",
                          text2: S.of(context).login,
                          onTap: () {
                            GoRouter.of(context).pushReplacement(kLoginPath);
                          },
                        ),
                        SizedBox(height: 30.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
