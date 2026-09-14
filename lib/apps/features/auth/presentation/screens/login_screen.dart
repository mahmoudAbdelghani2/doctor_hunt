import 'package:doctor_hunt/apps/core/widgets/app_background.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Center(child: Column(children: [Text('Login Screen')])),
            ),
          ),
        ],
      ),
    );
  }
}
