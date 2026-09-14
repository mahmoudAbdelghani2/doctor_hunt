import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
    required this.isPassword,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;
  IconData? suffixIcon = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(suffixIcon, color: Colors.grey.shade400),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                    suffixIcon = obscureText
                        ? Icons.visibility
                        : Icons.visibility_off;
                  });
                },
              )
            : null,
        label: Row(
          children: [
            SizedBox(width: 15.w),
            Text(widget.labelText),
          ],
        ),
        labelStyle: context.regular16TextSub,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade900, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.red.shade400, width: 1.0),
        ),
      ),

      obscureText: obscureText,
      validator: widget.validator,
    );
  }
}
