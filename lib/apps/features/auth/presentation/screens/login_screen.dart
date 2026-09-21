import 'package:doctor_hunt/apps/core/utils/consts.dart';
import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/apps/core/widgets/custom_text_form_field.dart';
import 'package:doctor_hunt/apps/features/auth/data/service/auth_supabase_service.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_bloc.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_event.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_states.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/custom_rishtext_widget.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/reset_pass_bottomsheet.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/widgets/signup_or_login_text_section.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  content: Text("Login successful!"),
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
                                title: S.of(context).welcomeBack,
                                subtitle: S.of(context).authSubtitle,
                              ),
                              SizedBox(height: 37.h),
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
                              SizedBox(height: 32.h),
                              if (state is AuthLoading)
                                const CircularProgressIndicator()
                              else
                                CustomAppButton(
                                  text: S.of(context).login,
                                  onPressed: () {
                                    context.read<AuthBloc>().add(
                                      LoginEvent(
                                        email: _emailController.text.trim(),
                                        password: _passwordController.text
                                            .trim(),
                                      ),
                                    );
                                  },
                                ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(24.r),
                                        ),
                                      ),
                                      builder: (context) =>
                                          const ResetPasswordFlowBottomSheet(),
                                    );
                                  },
                                  child: Text(
                                    S.of(context).forgotPassword,
                                    style: context.regular14TextSub.copyWith(
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50.h),
                              CustomRishTextWidget(
                                text1: "${S.of(context).dontHaveAccount} ",
                                text2: S.of(context).signUp,
                                onTap: () {
                                  GoRouter.of(
                                    context,
                                  ).pushReplacement(kSignupPath);
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
