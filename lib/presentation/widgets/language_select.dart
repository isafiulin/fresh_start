import 'package:flutter/material.dart';
import 'package:fresh_start/generated/locale_keys.g.dart';
import 'package:fresh_start/presentation/widgets/custom_button.dart';

class LanguageSelect extends StatelessWidget {
  const LanguageSelect({super.key, required this.changeLanguage});

  final Function(Locale) changeLanguage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            padding: EdgeInsets.zero,
            width: double.infinity,
            borderRadius: 18,
            fontSize: 12,
            title: LocaleKeys.ru,
            onPressed: () {
              changeLanguage(const Locale('ru'));
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: CustomButton(
            padding: EdgeInsets.zero,
            width: double.infinity,
            borderRadius: 18,
            fontSize: 12,
            title: LocaleKeys.en,
            onPressed: () {
              changeLanguage(const Locale('en'));
            },
          ),
        )
      ],
    );
  }
}
