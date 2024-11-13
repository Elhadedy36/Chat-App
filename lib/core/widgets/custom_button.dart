
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      this.onPressed,
      required this.text,
      required this.color,
      required this.textcolor});
  final void Function()? onPressed;
  final String text;
  final Color color;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: textcolor),
        ));
  }
}
