// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Find Trusted Doctors`
  String get onboardingTitleOne {
    return Intl.message(
      'Find Trusted Doctors',
      name: 'onboardingTitleOne',
      desc: '',
      args: [],
    );
  }

  /// `Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.`
  String get onboardingDescOne {
    return Intl.message(
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
      name: 'onboardingDescOne',
      desc: '',
      args: [],
    );
  }

  /// `Choose Best Doctors`
  String get onboardingTitleTwo {
    return Intl.message(
      'Choose Best Doctors',
      name: 'onboardingTitleTwo',
      desc: '',
      args: [],
    );
  }

  /// `Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.`
  String get onboardingDescTwo {
    return Intl.message(
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
      name: 'onboardingDescTwo',
      desc: '',
      args: [],
    );
  }

  /// `Easy Appointments`
  String get onboardingTitleThree {
    return Intl.message(
      'Easy Appointments',
      name: 'onboardingTitleThree',
      desc: '',
      args: [],
    );
  }

  /// `Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.`
  String get onboardingDescThree {
    return Intl.message(
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
      name: 'onboardingDescThree',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Choose your role`
  String get chooseYourRole {
    return Intl.message(
      'Choose your role',
      name: 'chooseYourRole',
      desc: '',
      args: [],
    );
  }

  /// `The selected role determines the experience and available features.`
  String get chooseRoleSubtitle {
    return Intl.message(
      'The selected role determines the experience and available features.',
      name: 'chooseRoleSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get patient {
    return Intl.message('Patient', name: 'patient', desc: '', args: []);
  }

  /// `Find doctors, book appointments, and manage your medical records.`
  String get patientDesc {
    return Intl.message(
      'Find doctors, book appointments, and manage your medical records.',
      name: 'patientDesc',
      desc: '',
      args: [],
    );
  }

  /// `Admin`
  String get admin {
    return Intl.message('Admin', name: 'admin', desc: '', args: []);
  }

  /// `Manage doctors, appointments, users, and the platform.`
  String get adminDesc {
    return Intl.message(
      'Manage doctors, appointments, users, and the platform.',
      name: 'adminDesc',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message('Continue', name: 'continueText', desc: '', args: []);
  }

  /// `Join us to start searching`
  String get joinUsToStartSearching {
    return Intl.message(
      'Join us to start searching',
      name: 'joinUsToStartSearching',
      desc: '',
      args: [],
    );
  }

  /// `You can search course, apply course and find scholarship for abroad studies`
  String get authSubtitle {
    return Intl.message(
      'You can search course, apply course and find scholarship for abroad studies',
      name: 'authSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message('Google', name: 'google', desc: '', args: []);
  }

  /// `Facebook`
  String get facebook {
    return Intl.message('Facebook', name: 'facebook', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `I agree with the Terms of Service & Privacy Policy`
  String get termsAndPrivacy {
    return Intl.message(
      'I agree with the Terms of Service & Privacy Policy',
      name: 'termsAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message('Sign up', name: 'signUp', desc: '', args: []);
  }

  /// `Have an account?`
  String get haveAccount {
    return Intl.message(
      'Have an account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message('Log in', name: 'login', desc: '', args: []);
  }

  /// `Welcome back`
  String get welcomeBack {
    return Intl.message(
      'Welcome back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgotPassword {
    return Intl.message(
      'Forgot password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Join us`
  String get joinUs {
    return Intl.message('Join us', name: 'joinUs', desc: '', args: []);
  }

  /// `Forgot password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email for the verification processs, we will send 4 digits code to your email.`
  String get forgotPasswordSubtitle {
    return Intl.message(
      'Enter your email for the verification processs, we will send 4 digits code to your email.',
      name: 'forgotPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4 Digits Code`
  String get enterDigitsCodeTitle {
    return Intl.message(
      'Enter 4 Digits Code',
      name: 'enterDigitsCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 4 digits code that you received on your email.`
  String get enterDigitsCodeSubtitle {
    return Intl.message(
      'Enter the 4 digits code that you received on your email.',
      name: 'enterDigitsCodeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPasswordTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Set the new password for your account so you can login and access all the features.`
  String get resetPasswordSubtitle {
    return Intl.message(
      'Set the new password for your account so you can login and access all the features.',
      name: 'resetPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter Password`
  String get reEnterPassword {
    return Intl.message(
      'Re-enter Password',
      name: 'reEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get updatePassword {
    return Intl.message(
      'Update Password',
      name: 'updatePassword',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
