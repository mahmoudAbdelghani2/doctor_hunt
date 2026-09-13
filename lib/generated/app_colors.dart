import 'package:flutter/material.dart';

abstract class AppColors {
  // اللون الأساسي للأزرار واللوجو وحالات التفعيل (Doctor Hunt Green)
  static const Color primary = Color(0xFF0EBE7F);
  static const Color primaryLight = Color(
    0xFFE8FAF3,
  ); // خلفيات خفيفة أو Card borders عند الاختيار
  static const Color primaryDark = Color(0xFF087951);

  // درجات تكميلية وثانوية
  static const Color secondary = Color(
    0xFF00C9B7,
  ); // التدرج العلوي اللبني المخضر
  static const Color secondaryLight = Color(0xFFF0FAF8);
  static const Color secondaryDark = Color(0xFF008377);

  // نصوص وعناوين الشاشات
  static const Color textMain = Color(
    0xFF222222,
  ); // العناوين (Welcome back, Doctor Hunt)
  static const Color textSub = Color(0xFF677294); // النصوص الفرعية والوصف
  static const Color textPlaceholder = Color(
    0xFF9E9E9E,
  ); // الهنت داخل حقول الإدخال
  static const Color textBorders = Color(
    0xFFE5E7EB,
  ); // حدود الـ TextFields والـ Cards

  // التنبيهات
  static const Color danger = Color(0xFFFF4848);
  static const Color dangerLight = Color(0xFFFFECEC);
  static const Color success = Color(0xFF0EBE7F);
  static const Color successLight = Color(0xFFE8FAF3);
  static const Color warning = Color(0xFFF9A825);
  static const Color warningLight = Color(0xFFFFF9E6);

  // ألوان عامة وظلال
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color boxShadow = Color(
    0x0F000000,
  ); // ظلال خفيفة للـ BottomSheets والبطاقات
}
