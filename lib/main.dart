// ignore_for_file: deprecated_member_use

import 'package:doctor_hunt/apps/core/logic/locale_cubit.dart';
import 'package:doctor_hunt/apps/core/network/api_consts.dart';
import 'package:doctor_hunt/apps/core/router/app_router.dart';
import 'package:doctor_hunt/apps/features/auth/data/service/auth_supabase_service.dart';
import 'package:doctor_hunt/apps/features/auth/presentation/controllers/auth_bloc/auth_bloc.dart';
import 'package:doctor_hunt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: ApiConstants.supabaseUrl,
    anonKey: ApiConstants.supabaseAnonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<LocaleCubit>(create: (context) => LocaleCubit()),
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(AuthSupabaseService()),
            ),
          ],
          child: BlocBuilder<LocaleCubit, Locale>(
            builder: (context, currentLocale) {
              return MaterialApp.router(
                locale: currentLocale,
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light().copyWith(
                  textTheme: GoogleFonts.rubikTextTheme(
                    ThemeData.light().textTheme,
                  ),
                ),
                routerConfig: AppRouter.router,
              );
            },
          ),
        );
      },
    );
  }
}
