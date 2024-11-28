import 'package:fresh_start/core/constants/global_general_constants.dart';
import 'package:fresh_start/core/constants/global_prefs_consts.dart';
import 'package:fresh_start/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

void setLocaleToPrefs(
  String localeCode,
) {
  final prefs = getIt<SharedPreferences>();
  // final localeCodeBack = localeCodeToBack(localeCode);

  prefs.setString(GlobalPrefsConst.lang, localeCode);
  // prefs.setString(GlobalPrefsConst.langToBack, localeCodeBack);
}

String getLocaleFromPrefs(bool isBackend) {
  final prefs = getIt<SharedPreferences>();
  // if (isBackend) {
  //   return prefs.getString(GlobalPrefsConst.langToBack) ??
  //       GlobalGeneralConsts.ruRu;
  // }
  return prefs.getString(GlobalPrefsConst.lang) ?? GlobalGeneralConsts.ru;
}
