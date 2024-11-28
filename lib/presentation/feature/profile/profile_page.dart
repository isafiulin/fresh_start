import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/core/utils/base_utils.dart';
import 'package:fresh_start/presentation/widgets/language_select.dart';
import 'package:fresh_start/service/app_theme/cubit/app_theme_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<(String, ThemeMode)> _themes = const [
    ('Dark', ThemeMode.dark),
    ('Light', ThemeMode.light),
    ('System', ThemeMode.system),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              BlocBuilder<AppThemeCubit, ThemeMode>(
                builder: (context, selectedTheme) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: _themes.length,
                    itemBuilder: (context, index) {
                      final String label = _themes[index].$1;
                      final ThemeMode theme = _themes[index].$2;
                      return ListTile(
                        title: Text(label),
                        onTap: () =>
                            context.read<AppThemeCubit>().updateTheme(theme),
                        trailing: selectedTheme == theme
                            ? const Icon(Icons.check)
                            : null,
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              LanguageSelect(
                changeLanguage: (Locale locale) {
                  setLocaleToPrefs(locale.languageCode);
                  context.setLocale(locale);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
