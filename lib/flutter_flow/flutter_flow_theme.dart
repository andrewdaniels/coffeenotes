import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF090F13);
  static const Color secondaryColor = Color(0xFF8B97A2);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';

  static TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF090F13),
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF090F13),
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF090F13),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF8B97A2),
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF57636C),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: Color(0xFF8B97A2),
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override(
          {String fontFamily,
          Color color,
          double fontSize,
          FontWeight fontWeight,
          FontStyle fontStyle}) =>
      GoogleFonts.getFont(
        fontFamily,
        color: color ?? this.color,
        fontSize: fontSize ?? this.fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
        fontStyle: fontStyle ?? this.fontStyle,
      );
}
