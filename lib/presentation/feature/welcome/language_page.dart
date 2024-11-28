import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/core/router/router_path.dart';
import 'package:fresh_start/core/utils/base_utils.dart';
import 'package:fresh_start/presentation/widgets/language_select.dart';
import 'package:go_router/go_router.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              LanguageSelect(
                changeLanguage: (Locale locale) {
                  setLocaleToPrefs(locale.languageCode);
                  context.setLocale(locale);
                  context.goNamed(RouterPath.onboarding);
                },
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
