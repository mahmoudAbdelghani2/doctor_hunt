import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  final String screenName;
  const TestScreen({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Test Screen => $screenName',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
