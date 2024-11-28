part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.loading() = _Loading;

  const factory AuthenticationState.authenticate() = _Authenticate;

  const factory AuthenticationState.unAuthenticatedStateWelcome() =
      _UnAuthenticatedStateWelcome;

  const factory AuthenticationState.unAuthenticatedStateLogin() =
      _UnAuthenticatedStateLogin;

  const factory AuthenticationState.authenticateNeedUpdate() =
      _AuthenticateNeedUpdate;

  const factory AuthenticationState.unAuthenticatedStateWelcomeNeedUpdate() =
      _UnAuthenticatedStateWelcomeNeedUpdate;

  const factory AuthenticationState.unAuthenticatedStateLoginNeedUpdate() =
      _UnAuthenticatedStateLoginNeedUpdate;

  const factory AuthenticationState.loggedOut() = _LoggedOut;
  const factory AuthenticationState.appStarted() = _AppStarted;
  const factory AuthenticationState.deleteError() = _DeleteError;
}
