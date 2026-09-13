import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Onboarding Screen', style: context.bold30Black),
      ),
    );
  }
}
