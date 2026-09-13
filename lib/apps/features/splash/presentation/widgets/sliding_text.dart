import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required Animation<Offset> slideAnimation})
    : _slideAnimation = slideAnimation;

  final Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: _slideAnimation,
          child: Text(
            'Doctor Hunt',
            textAlign: TextAlign.center,
            style: context.bold30Black,
          ),
        );
      },
      animation: _slideAnimation,
    );
  }
}
