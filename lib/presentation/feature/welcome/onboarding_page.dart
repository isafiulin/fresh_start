import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/core/router/router_path.dart';
import 'package:fresh_start/generated/locale_keys.g.dart';
import 'package:fresh_start/presentation/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  controller: _pageController,
                  children: [
                    Text(
                        'Тут написано что будем вместе трекать кол-во сигарет'),
                    Text(
                        'Тут написано что можно добавить виджет с красной кнопкой на главный экран, чтобы удобнее отмечать первый пункт'),
                    Text('Тут красивая аналитика'),
                    Text('Тут мотивашки'),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      padding: EdgeInsets.zero,
                      width: double.infinity,
                      height: 32,
                      borderRadius: 18,
                      fontSize: 12,
                      title: LocaleKeys.skip,
                      onPressed: () {
                        context.go(RouterPath.welcome);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: CustomButton(
                      padding: EdgeInsets.zero,
                      width: double.infinity,
                      height: 32,
                      borderRadius: 18,
                      fontSize: 12,
                      title:
                          currentPage != 3 ? LocaleKeys.next : LocaleKeys.start,
                      onPressed: () {
                        if (currentPage != 3) {
                          return _pageController.nextPage(
                              duration: Durations.medium1,
                              curve: Curves.linear);
                        }
                        context.go(RouterPath.welcome);
                      },
                    ),
                  ),
                ],
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
