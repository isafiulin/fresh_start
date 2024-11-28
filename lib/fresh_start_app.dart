import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fresh_start/core/router/router.dart';
import 'package:fresh_start/core/theme/app_theme.dart';
import 'package:fresh_start/service/app_theme/cubit/app_theme_cubit.dart';

class FreshStartApp extends StatefulWidget {
  const FreshStartApp({super.key});

  @override
  State<FreshStartApp> createState() => _FreshStartAppState();
}

class _FreshStartAppState extends State<FreshStartApp> {
  @override
  void initState() {
    super.initState();
    // initFire();
  }

  // Future<void> initFire() async {
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
  //     if (!mounted) {
  //       return;
  //     }
  //     await NotificationHandlerService(context)
  //         .initializeFcmNotification(context);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, ThemeMode>(
      builder: (context, ThemeMode mode) {
        return MaterialApp.router(
          builder: FlutterSmartDialog.init(
            builder: (context, child) {
              return MediaQuery.withNoTextScaling(
                child: child!,
              );
            },
          ),
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          title: 'Fresh Start',
          themeMode: mode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: goRouter,
        );
      },
    );
  }
}
