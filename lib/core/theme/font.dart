import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/core/constants/property.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConstant {
  static final appNormalFont = GoogleFonts.mulish(fontStyle: FontStyle.normal);
  static final appItalicFont = GoogleFonts.mulish(fontStyle: FontStyle.italic);

  //NORMAL WEIGHT FONT
  static final appNormalWeight700Font = GoogleFonts.mulish(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w700);

  static TextStyle headLine18W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine18FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine17W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine17FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine16W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine16FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine16W400TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine16FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine16W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine16FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine15W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine15FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine15W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine15FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine14W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine14FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine14W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine14FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine14W300TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine14FontSize.sp,
          fontWeight: FontWeight.w300,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine13W400TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine13FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine13W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine13FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine12W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine11FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine11W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine10FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine11W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine10FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine11W400TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine10FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine10TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine9FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine10W400TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine9FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine10W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine9FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine10W800TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine9FontSize.sp,
          fontWeight: FontWeight.w800,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine8W800TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine8FontSize.sp,
          fontWeight: FontWeight.w800,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine8W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine8FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine8W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine8FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine8TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine8FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine7TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine6FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine7CursiveTextStyleFont(Color color) =>
      appItalicFont.copyWith(
          fontSize: PropertyConstant.headLine6FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine6TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine6FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine6W300TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine6FontSize.sp,
          fontWeight: FontWeight.w300,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine5TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine5FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine5W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine5FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine5W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine5FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine5W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine5FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine5W200TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine5FontSize.sp,
          fontWeight: FontWeight.w200,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine4TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine4FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine4W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine4FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine4W400TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine4FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine4W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine4FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine3TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine3FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine2TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine2FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine2W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine2FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine2W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine2FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle headLine1TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine1FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine1W400TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine1FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle headLine0TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine0FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight * 1.3);

  static TextStyle subTitle2TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.subTitle2FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle subTitle1TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.subTitle1FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle bodyText2TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.body2FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle bodyText2TextStyleCursiveFont(Color color) =>
      appItalicFont.copyWith(
          fontSize: PropertyConstant.body2FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          // fontStyle: FontStyle.italic,
          height: PropertyConstant.fontHeight);
  static TextStyle bodyText2W500TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.body2FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle bodyText2W600TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.body2FontSize.sp,
          fontWeight: FontWeight.w600,
          color: color,
          height: PropertyConstant.fontHeight);
  static TextStyle bodyText2W700TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.body2FontSize.sp,
          fontWeight: FontWeight.w700,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle bodyText1TextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.body1FontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle buttonTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.buttonFontSize.sp,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static TextStyle overLineTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.overLineFontSize.sp,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static TextStyle captionTextStyleFont(Color color) => appNormalFont.copyWith(
      fontSize: PropertyConstant.captionFontSize.sp,
      fontWeight: FontWeight.w400,
      color: color,
      height: PropertyConstant.fontHeight);

  static TextStyle errorTextFieldStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.errorTextFieldFontSize.sp,
          fontWeight: FontWeight.w400,
          color: color,
          height: PropertyConstant.fontHeight);

  static TextStyle titleMediumTextStyleFont(Color color) =>
      appNormalFont.copyWith(
          fontSize: PropertyConstant.headLine2FontSize.sp,
          fontWeight: FontWeight.w500,
          color: color,
          height: PropertyConstant.fontHeight);
}
