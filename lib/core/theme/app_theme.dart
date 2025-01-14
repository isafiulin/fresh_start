import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_start/core/constants/property.dart';

import 'color.dart';
import 'text_style.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: ColorConstant.isMaterial3,
      splashFactory: InkRipple.splashFactory,
      scaffoldBackgroundColor: ColorConstant.scaffoldBackgroundLightThemeColor,
      navigationBarTheme: NavigationBarThemeData(
          surfaceTintColor: const Color(0xFFFA4F26),
          indicatorColor: ColorConstant.primaryThemeColor,
          labelTextStyle:
              WidgetStateProperty.all(const TextStyle(fontSize: 13.0))),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
      }),
      snackBarTheme: SnackBarThemeData(
          actionTextColor: Colors.blue,
          backgroundColor: Colors.white,
          contentTextStyle: TextStyleConstant.headLine3LightTextTheme),
      textTheme: TextTheme(
          titleLarge: TextStyleConstant.headLine6LightTextTheme,
          headlineSmall: TextStyleConstant.headLine5LightTextTheme,
          headlineMedium: TextStyleConstant.headLine4LightTextTheme,
          displaySmall: TextStyleConstant.headLine3LightTextTheme,
          displayMedium: TextStyleConstant.headLine2LightTextTheme,
          displayLarge: TextStyleConstant.headLine1LightTextTheme,
          titleSmall: TextStyleConstant.subTitle2LightTextTheme,
          titleMedium: TextStyleConstant.subTitle1LightTextTheme,
          bodyMedium: TextStyleConstant.bodyText2LightTextTheme,
          bodyLarge: TextStyleConstant.bodyText1LightTextTheme,
          labelLarge: TextStyleConstant.buttonLightTextTheme,
          labelSmall: TextStyleConstant.overLineLightTextTheme,
          bodySmall: TextStyleConstant.captionLightTextTheme),
      colorScheme: ColorScheme.fromSeed(
          primary: ColorConstant.primaryThemeColor,
          onPrimary: const Color(0xFFFFFFFF),
          primaryContainer: const Color(0xFFFFDADA),
          onPrimaryContainer: const Color(0xFFFA4F26),
          secondary: const Color(0xFF000000),
          onSecondary: const Color(0xFFFFFFFF),
          secondaryContainer: const Color(0xFFFFDADA),
          onSecondaryContainer: const Color(0xFFFA4F26),
          tertiary: const Color(0xFF000000),
          onTertiary: const Color(0xFFFFFFFF),
          tertiaryContainer: const Color(0xFFFFDDB2),
          onTertiaryContainer: const Color(0xFFFA4F26),
          error: const Color(0xFFBA1A1A),
          errorContainer: const Color(0xFFFFDAD6),
          onError: const Color(0xFFFFFFFF),
          onErrorContainer: const Color(0xFFD6D6D6),
          surface: const Color(0xFFFFFBFF),
          onSurface: const Color(0xFF201A1A),
          onSurfaceVariant: const Color(0xFF000000),
          outline: const Color(0xFF000000),
          onInverseSurface: const Color(0xFFFBEEED),
          inverseSurface: const Color(0xFF362F2F),
          inversePrimary: const Color(0xFFFFB3B6),
          shadow: const Color(0xFF000000),
          surfaceTint: Colors.transparent,
          //const Color(0xFFDD2C00), ///CARD COLOR
          outlineVariant: const Color(0xFF8C9DA8).withOpacity(0.2),

          ///DIVIDER COLOR
          scrim: const Color(0xFF000000),
          seedColor: ColorConstant.primaryThemeColor),
      //ColorScheme.fromSeed()
      focusColor: ColorConstant.focusLightThemeColor,
      hintColor: ColorConstant.hintLightThemeColor,
      unselectedWidgetColor: ColorConstant.unSelectedWidgetLightThemeColor,
      shadowColor: ColorConstant.selectedRowLightThemeColor,
      iconTheme: const IconThemeData(color: ColorConstant.iconLightThemeColor),
      indicatorColor: ColorConstant.indicatorLightThemeColor,
      cardTheme: CardTheme(
          shape: PropertyConstant.cardShapeBorder,
          color: ColorConstant.cardLightThemeColor),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              textStyle: TextStyleConstant.buttonTextStyle,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.symmetric(vertical: 10))),
      appBarTheme: AppBarTheme(
          backgroundColor: ColorConstant.scaffoldBackgroundLightThemeColor,
          surfaceTintColor: const Color(0xFFFA4F26),
          elevation: 0.0,
          titleSpacing: 0,
          centerTitle: false,
          titleTextStyle: TextStyleConstant.titleMediumLightTheme),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyleConstant.headLine2LightTextTheme,
          floatingLabelStyle: TextStyleConstant.headLine5LightTextTheme,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          border: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide: const BorderSide(color: Colors.orange)),
          enabledBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide: const BorderSide(color: Colors.orange)),
          errorStyle: TextStyleConstant.errorTextFieldTheme,
          errorMaxLines: 1,
          errorBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide:
                  const BorderSide(color: ColorConstant.primaryThemeColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide:
                  const BorderSide(color: ColorConstant.primaryThemeColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide:
                  const BorderSide(color: ColorConstant.primaryThemeColor))),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          textTheme: CupertinoTextThemeData(
              textStyle: TextStyleConstant.bodyText1LightTextTheme)));

  static final ThemeData darkTheme = ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
      }),
      useMaterial3: ColorConstant.isMaterial3,
      splashFactory: InkRipple.splashFactory,
      scaffoldBackgroundColor: ColorConstant.scaffoldBackgroundDarkThemeColor,
      navigationBarTheme: NavigationBarThemeData(
          surfaceTintColor: const Color(0xFF000000),
          indicatorColor: ColorConstant.primaryThemeColor,
          labelTextStyle:
              WidgetStateProperty.all(const TextStyle(fontSize: 13.0))),
      textTheme: TextTheme(
          titleLarge: TextStyleConstant.headLine6DarkTextTheme,
          headlineSmall: TextStyleConstant.headLine5DarkTextTheme,
          headlineMedium: TextStyleConstant.headLine4DarkTextTheme,
          displaySmall: TextStyleConstant.headLine3DarkTextTheme,
          displayMedium: TextStyleConstant.headLine2DarkTextTheme,
          displayLarge: TextStyleConstant.headLine1DarkTextTheme,
          titleSmall: TextStyleConstant.subTitle2DarkTextTheme,
          titleMedium: TextStyleConstant.subTitle1DarkTextTheme,
          bodyMedium: TextStyleConstant.bodyText2DarkTextTheme,
          bodyLarge: TextStyleConstant.bodyText1DarkTextTheme,
          labelLarge: TextStyleConstant.buttonLightTextTheme,
          labelSmall: TextStyleConstant.overLineLightTextTheme,
          bodySmall: TextStyleConstant.captionLightTextTheme),
      focusColor: ColorConstant.focusDarkThemeColor,
      hintColor: ColorConstant.hintDarkThemeColor,
      unselectedWidgetColor: ColorConstant.unSelectedWidgetDarkThemeColor,
      shadowColor: ColorConstant.selectedRowDarkThemeColor,
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.black))),
      iconTheme: const IconThemeData(color: ColorConstant.iconDarkThemeColor),
      indicatorColor: ColorConstant.indicatorDarkThemeColor,
      cardTheme: CardTheme(
          shape: PropertyConstant.cardShapeBorder,
          color: ColorConstant.cardDarkThemeColor),
      colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          primary: ColorConstant.blue,
          onPrimary: const Color(0xFF680019),
          primaryContainer: const Color(0xFFFA4F26),
          onPrimaryContainer: const Color(0xFFFFDADA),
          secondary: const Color(0xFFE6BDBD),
          onSecondary: const Color(0xFFFA4F26),
          secondaryContainer: const Color(0xFF5D3F40),
          onSecondaryContainer: const Color(0xFFFFDADA),
          tertiary: const Color(0xFFE6C08D),
          onTertiary: const Color(0xFF432C06),
          tertiaryContainer: const Color(0xFF5C421A),
          onTertiaryContainer: const Color(0xFFFA4F26),
          error: const Color(0xFFFFB4AB),
          errorContainer: const Color(0xFF93000A),
          onError: const Color(0xFF690005),
          onErrorContainer: const Color(0xFFFFFFFF),
          surface: ColorConstant.scaffoldBackgroundDarkThemeColor,
          //HERE ONLY CHANGE
          onSurface: const Color(0xFFECE0DF),
          onSurfaceVariant: const Color(0xFFD7C1C1),
          outline: const Color(0xFF9F8C8C),
          onInverseSurface: const Color(0xFF201A1A),
          inverseSurface: const Color(0xFFECE0DF),
          inversePrimary: const Color(0xFFFA4F26),
          shadow: const Color(0xFF000000),
          surfaceTint: ColorConstant.cardDarkThemeColor,
          outlineVariant: ColorConstant.dividerDarkThemeColor,
          scrim: const Color(0xFF000000),
          seedColor: ColorConstant.primaryThemeColor),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              textStyle: TextStyleConstant.buttonTextStyle,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.symmetric(vertical: 10))),
      appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          //shape: const RoundedRectangleBorder(),
          backgroundColor: ColorConstant.scaffoldBackgroundDarkThemeColor,
          elevation: 0.0,
          titleSpacing: 0,
          centerTitle: false,
          titleTextStyle: TextStyleConstant.subTitle1DarkTextTheme),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyleConstant.headLine2DarkTextTheme,
          floatingLabelStyle: TextStyleConstant.headLine5DarkTextTheme,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          border: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide: const BorderSide(color: Colors.orange)),
          errorStyle: TextStyleConstant.errorTextFieldTheme,
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide: const BorderSide(
                  color: ColorConstant.inputEnabledBorderDarkColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide:
                  const BorderSide(color: ColorConstant.primaryThemeColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide:
                  const BorderSide(color: ColorConstant.primaryThemeColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: PropertyConstant.textFieldBorderRadius,
              borderSide: const BorderSide(
                  color: ColorConstant.inputEnabledBorderDarkColor))),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
          textTheme: CupertinoTextThemeData(
              textStyle: TextStyleConstant.bodyText1DarkTextTheme)));
}
