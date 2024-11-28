// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthenticationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticateImpl implements _Authenticate {
  const _$AuthenticateImpl();

  @override
  String toString() {
    return 'AuthenticationState.authenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthenticationState {
  const factory _Authenticate() = _$AuthenticateImpl;
}

/// @nodoc
abstract class _$$UnAuthenticatedStateWelcomeImplCopyWith<$Res> {
  factory _$$UnAuthenticatedStateWelcomeImplCopyWith(
          _$UnAuthenticatedStateWelcomeImpl value,
          $Res Function(_$UnAuthenticatedStateWelcomeImpl) then) =
      __$$UnAuthenticatedStateWelcomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedStateWelcomeImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnAuthenticatedStateWelcomeImpl>
    implements _$$UnAuthenticatedStateWelcomeImplCopyWith<$Res> {
  __$$UnAuthenticatedStateWelcomeImplCopyWithImpl(
      _$UnAuthenticatedStateWelcomeImpl _value,
      $Res Function(_$UnAuthenticatedStateWelcomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthenticatedStateWelcomeImpl
    implements _UnAuthenticatedStateWelcome {
  const _$UnAuthenticatedStateWelcomeImpl();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticatedStateWelcome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthenticatedStateWelcomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return unAuthenticatedStateWelcome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return unAuthenticatedStateWelcome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateWelcome != null) {
      return unAuthenticatedStateWelcome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return unAuthenticatedStateWelcome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return unAuthenticatedStateWelcome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateWelcome != null) {
      return unAuthenticatedStateWelcome(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticatedStateWelcome implements AuthenticationState {
  const factory _UnAuthenticatedStateWelcome() =
      _$UnAuthenticatedStateWelcomeImpl;
}

/// @nodoc
abstract class _$$UnAuthenticatedStateLoginImplCopyWith<$Res> {
  factory _$$UnAuthenticatedStateLoginImplCopyWith(
          _$UnAuthenticatedStateLoginImpl value,
          $Res Function(_$UnAuthenticatedStateLoginImpl) then) =
      __$$UnAuthenticatedStateLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedStateLoginImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnAuthenticatedStateLoginImpl>
    implements _$$UnAuthenticatedStateLoginImplCopyWith<$Res> {
  __$$UnAuthenticatedStateLoginImplCopyWithImpl(
      _$UnAuthenticatedStateLoginImpl _value,
      $Res Function(_$UnAuthenticatedStateLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthenticatedStateLoginImpl implements _UnAuthenticatedStateLogin {
  const _$UnAuthenticatedStateLoginImpl();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticatedStateLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthenticatedStateLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return unAuthenticatedStateLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return unAuthenticatedStateLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateLogin != null) {
      return unAuthenticatedStateLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return unAuthenticatedStateLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return unAuthenticatedStateLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateLogin != null) {
      return unAuthenticatedStateLogin(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticatedStateLogin implements AuthenticationState {
  const factory _UnAuthenticatedStateLogin() = _$UnAuthenticatedStateLoginImpl;
}

/// @nodoc
abstract class _$$AuthenticateNeedUpdateImplCopyWith<$Res> {
  factory _$$AuthenticateNeedUpdateImplCopyWith(
          _$AuthenticateNeedUpdateImpl value,
          $Res Function(_$AuthenticateNeedUpdateImpl) then) =
      __$$AuthenticateNeedUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateNeedUpdateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticateNeedUpdateImpl>
    implements _$$AuthenticateNeedUpdateImplCopyWith<$Res> {
  __$$AuthenticateNeedUpdateImplCopyWithImpl(
      _$AuthenticateNeedUpdateImpl _value,
      $Res Function(_$AuthenticateNeedUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticateNeedUpdateImpl implements _AuthenticateNeedUpdate {
  const _$AuthenticateNeedUpdateImpl();

  @override
  String toString() {
    return 'AuthenticationState.authenticateNeedUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateNeedUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return authenticateNeedUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return authenticateNeedUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (authenticateNeedUpdate != null) {
      return authenticateNeedUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return authenticateNeedUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return authenticateNeedUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (authenticateNeedUpdate != null) {
      return authenticateNeedUpdate(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateNeedUpdate implements AuthenticationState {
  const factory _AuthenticateNeedUpdate() = _$AuthenticateNeedUpdateImpl;
}

/// @nodoc
abstract class _$$UnAuthenticatedStateWelcomeNeedUpdateImplCopyWith<$Res> {
  factory _$$UnAuthenticatedStateWelcomeNeedUpdateImplCopyWith(
          _$UnAuthenticatedStateWelcomeNeedUpdateImpl value,
          $Res Function(_$UnAuthenticatedStateWelcomeNeedUpdateImpl) then) =
      __$$UnAuthenticatedStateWelcomeNeedUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedStateWelcomeNeedUpdateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnAuthenticatedStateWelcomeNeedUpdateImpl>
    implements _$$UnAuthenticatedStateWelcomeNeedUpdateImplCopyWith<$Res> {
  __$$UnAuthenticatedStateWelcomeNeedUpdateImplCopyWithImpl(
      _$UnAuthenticatedStateWelcomeNeedUpdateImpl _value,
      $Res Function(_$UnAuthenticatedStateWelcomeNeedUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthenticatedStateWelcomeNeedUpdateImpl
    implements _UnAuthenticatedStateWelcomeNeedUpdate {
  const _$UnAuthenticatedStateWelcomeNeedUpdateImpl();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticatedStateWelcomeNeedUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthenticatedStateWelcomeNeedUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return unAuthenticatedStateWelcomeNeedUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return unAuthenticatedStateWelcomeNeedUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateWelcomeNeedUpdate != null) {
      return unAuthenticatedStateWelcomeNeedUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return unAuthenticatedStateWelcomeNeedUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return unAuthenticatedStateWelcomeNeedUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateWelcomeNeedUpdate != null) {
      return unAuthenticatedStateWelcomeNeedUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticatedStateWelcomeNeedUpdate
    implements AuthenticationState {
  const factory _UnAuthenticatedStateWelcomeNeedUpdate() =
      _$UnAuthenticatedStateWelcomeNeedUpdateImpl;
}

/// @nodoc
abstract class _$$UnAuthenticatedStateLoginNeedUpdateImplCopyWith<$Res> {
  factory _$$UnAuthenticatedStateLoginNeedUpdateImplCopyWith(
          _$UnAuthenticatedStateLoginNeedUpdateImpl value,
          $Res Function(_$UnAuthenticatedStateLoginNeedUpdateImpl) then) =
      __$$UnAuthenticatedStateLoginNeedUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedStateLoginNeedUpdateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnAuthenticatedStateLoginNeedUpdateImpl>
    implements _$$UnAuthenticatedStateLoginNeedUpdateImplCopyWith<$Res> {
  __$$UnAuthenticatedStateLoginNeedUpdateImplCopyWithImpl(
      _$UnAuthenticatedStateLoginNeedUpdateImpl _value,
      $Res Function(_$UnAuthenticatedStateLoginNeedUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnAuthenticatedStateLoginNeedUpdateImpl
    implements _UnAuthenticatedStateLoginNeedUpdate {
  const _$UnAuthenticatedStateLoginNeedUpdateImpl();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticatedStateLoginNeedUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthenticatedStateLoginNeedUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return unAuthenticatedStateLoginNeedUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return unAuthenticatedStateLoginNeedUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateLoginNeedUpdate != null) {
      return unAuthenticatedStateLoginNeedUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return unAuthenticatedStateLoginNeedUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return unAuthenticatedStateLoginNeedUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (unAuthenticatedStateLoginNeedUpdate != null) {
      return unAuthenticatedStateLoginNeedUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticatedStateLoginNeedUpdate
    implements AuthenticationState {
  const factory _UnAuthenticatedStateLoginNeedUpdate() =
      _$UnAuthenticatedStateLoginNeedUpdateImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthenticationState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthenticationState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
          _$AppStartedImpl value, $Res Function(_$AppStartedImpl) then) =
      __$$AppStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
      _$AppStartedImpl _value, $Res Function(_$AppStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStartedImpl implements _AppStarted {
  const _$AppStartedImpl();

  @override
  String toString() {
    return 'AuthenticationState.appStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements AuthenticationState {
  const factory _AppStarted() = _$AppStartedImpl;
}

/// @nodoc
abstract class _$$DeleteErrorImplCopyWith<$Res> {
  factory _$$DeleteErrorImplCopyWith(
          _$DeleteErrorImpl value, $Res Function(_$DeleteErrorImpl) then) =
      __$$DeleteErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$DeleteErrorImpl>
    implements _$$DeleteErrorImplCopyWith<$Res> {
  __$$DeleteErrorImplCopyWithImpl(
      _$DeleteErrorImpl _value, $Res Function(_$DeleteErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteErrorImpl implements _DeleteError {
  const _$DeleteErrorImpl();

  @override
  String toString() {
    return 'AuthenticationState.deleteError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticate,
    required TResult Function() unAuthenticatedStateWelcome,
    required TResult Function() unAuthenticatedStateLogin,
    required TResult Function() authenticateNeedUpdate,
    required TResult Function() unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function() unAuthenticatedStateLoginNeedUpdate,
    required TResult Function() loggedOut,
    required TResult Function() appStarted,
    required TResult Function() deleteError,
  }) {
    return deleteError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticate,
    TResult? Function()? unAuthenticatedStateWelcome,
    TResult? Function()? unAuthenticatedStateLogin,
    TResult? Function()? authenticateNeedUpdate,
    TResult? Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult? Function()? loggedOut,
    TResult? Function()? appStarted,
    TResult? Function()? deleteError,
  }) {
    return deleteError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticate,
    TResult Function()? unAuthenticatedStateWelcome,
    TResult Function()? unAuthenticatedStateLogin,
    TResult Function()? authenticateNeedUpdate,
    TResult Function()? unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function()? unAuthenticatedStateLoginNeedUpdate,
    TResult Function()? loggedOut,
    TResult Function()? appStarted,
    TResult Function()? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_UnAuthenticatedStateWelcome value)
        unAuthenticatedStateWelcome,
    required TResult Function(_UnAuthenticatedStateLogin value)
        unAuthenticatedStateLogin,
    required TResult Function(_AuthenticateNeedUpdate value)
        authenticateNeedUpdate,
    required TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)
        unAuthenticatedStateWelcomeNeedUpdate,
    required TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)
        unAuthenticatedStateLoginNeedUpdate,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult? Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult? Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult? Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult? Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_UnAuthenticatedStateWelcome value)?
        unAuthenticatedStateWelcome,
    TResult Function(_UnAuthenticatedStateLogin value)?
        unAuthenticatedStateLogin,
    TResult Function(_AuthenticateNeedUpdate value)? authenticateNeedUpdate,
    TResult Function(_UnAuthenticatedStateWelcomeNeedUpdate value)?
        unAuthenticatedStateWelcomeNeedUpdate,
    TResult Function(_UnAuthenticatedStateLoginNeedUpdate value)?
        unAuthenticatedStateLoginNeedUpdate,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class _DeleteError implements AuthenticationState {
  const factory _DeleteError() = _$DeleteErrorImpl;
}
