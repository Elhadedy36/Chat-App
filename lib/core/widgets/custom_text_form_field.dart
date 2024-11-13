
import 'package:chat_app/core/functions/outline_output_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.obscureText,
      this.suffixIcon,
      this.prefixIcon});
  final String labelText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: labelText,
          border: getBorderStyle(10, Colors.black),
          focusedBorder: getBorderStyle(10, Colors.blue),
          errorBorder: getBorderStyle(10, Colors.red),
          enabledBorder: getBorderStyle(10, Colors.black)),
    );
  }
}
