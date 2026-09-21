import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_text_form_field.dart';
import 'package:doctor_hunt/apps/features/auth/data/service/auth_supabase_service.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_bloc.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_event.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_states.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/custom_rishtext_widget.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/signup_or_login_text_section.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(AuthSupabaseService()),
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Sign up successful!"),
                  backgroundColor: Colors.green,
                ),
              );
              GoRouter.of(context).pushReplacement(kMainPath);
            } else if (state is AuthFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                const AppBackground(),
                SafeArea(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 140.h,
                          left: 20.w,
                          right: 20.w,
                        ),
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
                              if (state is AuthLoading)
                                const CircularProgressIndicator()
                              else
                                CustomAppButton(
                                  text: S.of(context).signUp,
                                  onPressed: () {
                                    context.read<AuthBloc>().add(
                                      SignUpEvent(
                                        email: _emailController.text.trim(),
                                        password: _passwordController.text
                                            .trim(),
                                        name: _nameController.text.trim(),
                                      ),
                                    );
                                  },
                                ),
                              SizedBox(height: 17.h),
                              CustomRishTextWidget(
                                text1: "${S.of(context).haveAccount} ",
                                text2: S.of(context).login,
                                onTap: () {
                                  GoRouter.of(
                                    context,
                                  ).pushReplacement(kLoginPath);
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
            );
          },
        ),
      ),
    );
  }
}
