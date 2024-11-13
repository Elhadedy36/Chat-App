
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

OutlineInputBorder getBorderStyle(double borderradius, Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderradius),
    borderSide: BorderSide(color: color, width: 2),
  );
}
