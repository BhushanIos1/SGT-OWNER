import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFontStyle {
  static TextStyle _textStyle(Color color, double size, FontWeight fontWeight) {
    return GoogleFonts.inter(
        color: color, fontSize: size, fontWeight: fontWeight);
  }

  static regularTextStyle(Color color, double size) {
    return _textStyle(color, size, FontWeight.w400);
  }

  static mediumTextStyle(Color color, double size) {
    return _textStyle(color, size, FontWeight.w500);
  }

  static semiboldTextStyle(Color color, double size) {
    return _textStyle(color, size, FontWeight.w600);
  }

  static boldTextStyle(Color color, double size) {
    return _textStyle(color, size, FontWeight.w700);
  }
}
