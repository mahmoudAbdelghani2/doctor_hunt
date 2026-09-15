import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en'));

  void changeLocale(String languageCode) {
    emit(Locale(languageCode));
  }

  void toggleLocale() {
    emit(state.languageCode == 'en' ? const Locale('ar') : const Locale('en'));
  }

  bool isEnglish() {
    return state.languageCode == 'en';
  }
}
