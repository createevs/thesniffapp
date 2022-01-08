import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF2D3E52);
  static const Color secondaryColor = Color(0xFFFF4B50);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static const Color primaryDark = Color(0xFF111111);
  static const Color background = Color(0xFFF1F4F8);
  static const Color grayIcon = Color(0xFF95A1AC);
  static const Color gray200 = Color(0xFFDBE2E7);
  static const Color dark600 = Color(0xFF111111);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => GoogleFonts.getFont(
        'Open Sans',
        color: primaryDark,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Open Sans',
        color: primaryDark,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Open Sans',
        color: primaryDark,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Open Sans',
        color: grayIcon,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Open Sans',
        color: primaryDark,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Open Sans',
        color: grayIcon,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Open Sans',
        color: primaryDark,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
