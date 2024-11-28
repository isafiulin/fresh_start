import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/core/router/router_path.dart';
import 'package:fresh_start/data/models/profile.dart';
import 'package:fresh_start/generated/locale_keys.g.dart';
import 'package:fresh_start/presentation/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _smokeADayController = TextEditingController();
  final TextEditingController _pricePackController = TextEditingController();
  final TextEditingController _numbInPackController = TextEditingController();

  bool get isWelcomeComplete =>
      _userNameController.text.trim().isNotEmpty &&
      _smokeADayController.text.trim().isNotEmpty &&
      _pricePackController.text.trim().isNotEmpty &&
      _numbInPackController.text.trim().isNotEmpty;

  Future<void> _addProfile() async {
    final double pricePack =
        double.tryParse(_pricePackController.text.trim()) ?? 0;
    final int smokeADay = int.tryParse(_smokeADayController.text.trim()) ?? 0;
    final int numbInPack = int.tryParse(_numbInPackController.text.trim()) ?? 0;

    final box = Hive.box<Profile>('Profile');

    await box.put(
      'Profile',
      Profile(
          userName: _userNameController.text.trim(),
          pricePack: pricePack,
          smokeADay: smokeADay,
          numbInPack: numbInPack,
          smokeInfoList: [],
          registrationDate: DateTime.now()),
    );
    if (mounted) {
      context.go(RouterPath.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: tr(LocaleKeys.userName), // Основной текст
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: '*', // Красная звёздочка
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              CupertinoTextField(
                controller: _userNameController,
                maxLength: 20,
                // keyboardType:
                //     const TextInputType.numberWithOptions(decimal: true),
                // inputFormatters: <TextInputFormatter>[
                //   TextInputFormatter.withFunction((oldValue, newValue) {
                //     return newValue.copyWith(
                //       text: newValue.text.replaceAll(RegExp(r"\,"), "."),
                //     );
                //   }),
                //   FilteringTextInputFormatter.allow(
                //     RegExp(r'^\d*\.?\d{0,2}'),
                //   ),
                // ],
                onChanged: (value) {
                  setState(() {});
                },

                style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                placeholderStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                padding: EdgeInsets.all(8.r),
                placeholder: tr(LocaleKeys.writeHere),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text.rich(
                TextSpan(
                  text: tr(LocaleKeys.smokeADay), // Основной текст
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: '*', // Красная звёздочка
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              CupertinoTextField(
                controller: _smokeADayController,
                maxLength: 3,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: false),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) {
                  setState(() {});
                },
                style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                placeholderStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                padding: EdgeInsets.all(8.r),
                placeholder: tr(LocaleKeys.writeHere),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text.rich(
                TextSpan(
                  text: tr(LocaleKeys.priceOfPacker), // Основной текст
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: '*', // Красная звёздочка
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              CupertinoTextField(
                controller: _pricePackController,
                maxLength: 3,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[
                  TextInputFormatter.withFunction((oldValue, newValue) {
                    return newValue.copyWith(
                      text: newValue.text.replaceAll(RegExp(r"\,"), "."),
                    );
                  }),
                  FilteringTextInputFormatter.allow(
                    RegExp(r'^\d*\.?\d{0,2}'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {});
                },
                style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                placeholderStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                padding: EdgeInsets.all(8.r),
                placeholder: tr(LocaleKeys.writeHere),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text.rich(
                TextSpan(
                  text: tr(LocaleKeys.numberInPacker), // Основной текст
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: '*', // Красная звёздочка
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              CupertinoTextField(
                controller: _numbInPackController,
                maxLength: 3,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: false),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) {
                  setState(() {});
                },
                style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                placeholderStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
                padding: EdgeInsets.all(8.r),
                placeholder: tr(LocaleKeys.writeHere),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Spacer(),
              CustomButton(
                isEnable: isWelcomeComplete,
                padding: EdgeInsets.zero,
                width: double.infinity,
                borderRadius: 18,
                fontSize: 12,
                title: 'Погнали дальше',
                onPressed: () {
                  if (isWelcomeComplete) {
                    _addProfile();
                  }
                },
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
