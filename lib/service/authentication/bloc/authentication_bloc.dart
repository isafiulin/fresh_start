import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fresh_start/core/error/error_exception.dart';
import 'package:fresh_start/data/models/profile.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@LazySingleton()
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.loading()) {
    on<AppStarted>(appStarted);
  }
  Future<void> appStarted(
    AppStarted event,
    Emitter<AuthenticationState> emit,
  ) async {
    // final bool hasInternetAccess = await InternetConnection().hasInternetAccess;

    // if (hasInternetAccess) {
    //   final isNeedUpdate = await checkAppUpdate();

    try {
      // final Either<Failure, bool> authenticated =
      //     await _getAuthenticationUseCase.verifyToken();

      final box = Hive.box<Profile>('Profile');

      final Profile? profile = box.get('Profile');
      await Future.delayed(const Duration(seconds: 2));

      if (profile != null) {
        return emit(const AuthenticationState.authenticate());
      }

      // if (authenticated.isRight) {
      //   final value = authenticated.right;
      //   return value
      //       ? isNeedUpdate
      //           ? emit(const AuthenticationState.authenticateNeedUpdate())
      //           : emit(const AuthenticationState.authenticate())
      //       : isNeedUpdate
      //           ? emit(const AuthenticationState
      //               .unAuthenticatedStateLoginNeedUpdate())
      //           : emit(const AuthenticationState.unAuthenticatedStateLogin());
      // }
      return emit(const AuthenticationState.unAuthenticatedStateWelcome());
      // isNeedUpdate
      //     ? emit(
      //         const AuthenticationState.unAuthenticatedStateWelcomeNeedUpdate())
      //     : emit(const AuthenticationState.unAuthenticatedStateWelcome());
    } catch (e) {
      if (e is UnauthorizedException) {
        // await resetCache();
        // return isNeedUpdate
        //     ? emit(const AuthenticationState
        //         .unAuthenticatedStateWelcomeNeedUpdate())
        //     : emit(const AuthenticationState.unAuthenticatedStateWelcome());
      }
      //   return isNeedUpdate
      //       ? emit(
      //           const AuthenticationState.unAuthenticatedStateLoginNeedUpdate())
      //       : emit(const AuthenticationState.unAuthenticatedStateLogin());
      // }
    }
    emit(const AuthenticationState.authenticate());
  }
}
