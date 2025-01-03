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
import 'package:fresh_start/presentation/widgets/dash_with_sign.dart';
import 'package:fresh_start/service/app_theme/cubit/app_theme_cubit.dart';
import 'package:fresh_start/service/authentication/bloc/authentication_bloc.dart';
import 'package:fresh_start/service/smoker_service.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:home_widget/home_widget.dart';
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
  final appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);

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

  // Set AppGroup Id. This is needed for iOS Apps to talk to their WidgetExtensions
  await HomeWidget.setAppGroupId('group.fresh.start.home.screen');
  // Register an Interactivity Callback. It is necessary that this method is static and public
  await HomeWidget.registerInteractivityCallback(interactiveCallback);

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

/// Callback invoked by HomeWidget Plugin when performing interactive actions
/// The @pragma('vm:entry-point') Notification is required so that the Plugin can find it
@pragma('vm:entry-point')
Future<void> interactiveCallback(Uri? uri) async {
  // Set AppGroup Id. This is needed for iOS Apps to talk to their WidgetExtensions
  await HomeWidget.setAppGroupId('group.fresh.start.home.screen');

  // We check the host of the uri to determine which action should be triggered.
  if (uri?.host == 'increment') {
    try {
      print("4333");
      WidgetsFlutterBinding.ensureInitialized();

      await Hive.initFlutter();

      // final int val = await SmokerService.addNewSmokerInfo();
      // print(val);
      // _sendAndUpdate(val);
    } catch (e) {
      print(e);
    }
  } else if (uri?.host == 'clear') {
    // await _clear();
  }
}

const _countKey = 'counter';

Future<void> _sendAndUpdate([int? value]) async {
  await HomeWidget.saveWidgetData(_countKey, value);
  await HomeWidget.renderFlutterWidget(
    DashWithSign(count: value ?? 0),
    key: 'dash_counter',
    logicalSize: const Size(100, 100),
  );
  await HomeWidget.updateWidget(
    iOSName: 'CounterWidget',
    androidName: 'CounterWidgetProvider',
  );

  if (Platform.isAndroid) {
    // Update Glance Provider
    await HomeWidget.updateWidget(androidName: 'CounterGlanceWidgetReceiver');
  }
}
