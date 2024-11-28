// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fresh_start/core/utils/logger.dart' as _i277;
import 'package:fresh_start/injectable_singleton_module.dart' as _i958;
import 'package:fresh_start/service/authentication/bloc/authentication_bloc.dart'
    as _i249;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i277.Logger>(() => _i277.Logger());
    gh.lazySingleton<_i249.AuthenticationBloc>(
        () => _i249.AuthenticationBloc());
    return this;
  }
}

class _$InjectionModule extends _i958.InjectionModule {}
