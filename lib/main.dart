import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/bloc_observer.dart';
import 'package:fresh_start/core/constants/end_point.dart';
import 'package:fresh_start/core/constants/global_general_constants.dart';
import 'package:fresh_start/core/constants/global_prefs_consts.dart';
import 'package:fresh_start/data/models/profile.dart';
import 'package:fresh_start/data/models/smoke_info.dart';
import 'package:fresh_start/fresh_start_app.dart';
import 'package:fresh_start/injectable.dart';
import 'package:fresh_start/service/app_theme/cubit/app_theme_cubit.dart';
import 'package:fresh_start/service/authentication/bloc/authentication_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await configure();
  await EndPointConstant().init();
  await Hive.initFlutter();

  Bloc.observer = AppBlocObserver();

  /// initialize hydrated bloc
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  // getIt<AmplitudeCubit>().initAmplitude();
  final prefs = getIt<SharedPreferences>();

  final String defaultLocale = Platform.localeName;
  String systemLanguageCode = '';

  if (defaultLocale.contains(GlobalGeneralConsts.en)) {
    systemLanguageCode = GlobalGeneralConsts.en;
  } else if (defaultLocale.contains(GlobalGeneralConsts.ru)) {
    systemLanguageCode = GlobalGeneralConsts.ru;
  } else {
    systemLanguageCode = GlobalGeneralConsts.ru;
  }

  final String languageCode =
      prefs.getString(GlobalPrefsConst.lang) ?? systemLanguageCode;

  prefs.setString(GlobalPrefsConst.lang, languageCode);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  await EasyLocalization.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  Hive.registerAdapter(SmokeInfoAdapter());
  Hive.registerAdapter(ProfileAdapter());

  await Hive.openBox<Profile>('Profile');

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://c1ca89f7d44e01758a5d8289a57b8bf7@o4508374841556992.ingest.de.sentry.io/4508374843261008';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(
      ScreenUtilInit(
        designSize: const Size(360, 700),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return EasyLocalization(
            ignorePluralRules: false,
            supportedLocales: const [Locale('en'), Locale('ru')],
            path: GlobalGeneralConsts.translationsPath,
            startLocale: Locale(languageCode),
            fallbackLocale: const Locale('ru'),
            child: MultiBlocProvider(
              providers: [
                BlocProvider<AuthenticationBloc>(
                  create: (context) =>
                      getIt<AuthenticationBloc>()..add(AppStarted()),
                ),
                BlocProvider(create: (_) => AppThemeCubit()),
              ],
              child: FreshStartApp(),
            ),
          );
        },
      ),
    ),
  );
}
