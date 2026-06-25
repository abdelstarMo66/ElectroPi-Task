// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates()';
}


}

/// @nodoc
class $LoginStatesCopyWith<$Res>  {
$LoginStatesCopyWith(LoginStates _, $Res Function(LoginStates) __);
}


/// Adds pattern-matching-related methods to [LoginStates].
extension LoginStatesPatterns on LoginStates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( VisibilityPasswordState value)?  visibilityPasswordState,TResult Function( RememberMeChangeState value)?  rememberMeChangeState,TResult Function( LoadingLogin value)?  loadingLogin,TResult Function( SuccessLogin value)?  successLogin,TResult Function( ErrorLogin value)?  errorLogin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case VisibilityPasswordState() when visibilityPasswordState != null:
return visibilityPasswordState(_that);case RememberMeChangeState() when rememberMeChangeState != null:
return rememberMeChangeState(_that);case LoadingLogin() when loadingLogin != null:
return loadingLogin(_that);case SuccessLogin() when successLogin != null:
return successLogin(_that);case ErrorLogin() when errorLogin != null:
return errorLogin(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( VisibilityPasswordState value)  visibilityPasswordState,required TResult Function( RememberMeChangeState value)  rememberMeChangeState,required TResult Function( LoadingLogin value)  loadingLogin,required TResult Function( SuccessLogin value)  successLogin,required TResult Function( ErrorLogin value)  errorLogin,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case VisibilityPasswordState():
return visibilityPasswordState(_that);case RememberMeChangeState():
return rememberMeChangeState(_that);case LoadingLogin():
return loadingLogin(_that);case SuccessLogin():
return successLogin(_that);case ErrorLogin():
return errorLogin(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( VisibilityPasswordState value)?  visibilityPasswordState,TResult? Function( RememberMeChangeState value)?  rememberMeChangeState,TResult? Function( LoadingLogin value)?  loadingLogin,TResult? Function( SuccessLogin value)?  successLogin,TResult? Function( ErrorLogin value)?  errorLogin,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case VisibilityPasswordState() when visibilityPasswordState != null:
return visibilityPasswordState(_that);case RememberMeChangeState() when rememberMeChangeState != null:
return rememberMeChangeState(_that);case LoadingLogin() when loadingLogin != null:
return loadingLogin(_that);case SuccessLogin() when successLogin != null:
return successLogin(_that);case ErrorLogin() when errorLogin != null:
return errorLogin(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool obscurePassword)?  visibilityPasswordState,TResult Function( bool rememberMe)?  rememberMeChangeState,TResult Function()?  loadingLogin,TResult Function()?  successLogin,TResult Function( String errorMessage)?  errorLogin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case VisibilityPasswordState() when visibilityPasswordState != null:
return visibilityPasswordState(_that.obscurePassword);case RememberMeChangeState() when rememberMeChangeState != null:
return rememberMeChangeState(_that.rememberMe);case LoadingLogin() when loadingLogin != null:
return loadingLogin();case SuccessLogin() when successLogin != null:
return successLogin();case ErrorLogin() when errorLogin != null:
return errorLogin(_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool obscurePassword)  visibilityPasswordState,required TResult Function( bool rememberMe)  rememberMeChangeState,required TResult Function()  loadingLogin,required TResult Function()  successLogin,required TResult Function( String errorMessage)  errorLogin,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case VisibilityPasswordState():
return visibilityPasswordState(_that.obscurePassword);case RememberMeChangeState():
return rememberMeChangeState(_that.rememberMe);case LoadingLogin():
return loadingLogin();case SuccessLogin():
return successLogin();case ErrorLogin():
return errorLogin(_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool obscurePassword)?  visibilityPasswordState,TResult? Function( bool rememberMe)?  rememberMeChangeState,TResult? Function()?  loadingLogin,TResult? Function()?  successLogin,TResult? Function( String errorMessage)?  errorLogin,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case VisibilityPasswordState() when visibilityPasswordState != null:
return visibilityPasswordState(_that.obscurePassword);case RememberMeChangeState() when rememberMeChangeState != null:
return rememberMeChangeState(_that.rememberMe);case LoadingLogin() when loadingLogin != null:
return loadingLogin();case SuccessLogin() when successLogin != null:
return successLogin();case ErrorLogin() when errorLogin != null:
return errorLogin(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class Initial extends LoginStates {
  const Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates.initial()';
}


}




/// @nodoc


class VisibilityPasswordState extends LoginStates {
  const VisibilityPasswordState(this.obscurePassword): super._();
  

 final  bool obscurePassword;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisibilityPasswordStateCopyWith<VisibilityPasswordState> get copyWith => _$VisibilityPasswordStateCopyWithImpl<VisibilityPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisibilityPasswordState&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,obscurePassword);

@override
String toString() {
  return 'LoginStates.visibilityPasswordState(obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class $VisibilityPasswordStateCopyWith<$Res> implements $LoginStatesCopyWith<$Res> {
  factory $VisibilityPasswordStateCopyWith(VisibilityPasswordState value, $Res Function(VisibilityPasswordState) _then) = _$VisibilityPasswordStateCopyWithImpl;
@useResult
$Res call({
 bool obscurePassword
});




}
/// @nodoc
class _$VisibilityPasswordStateCopyWithImpl<$Res>
    implements $VisibilityPasswordStateCopyWith<$Res> {
  _$VisibilityPasswordStateCopyWithImpl(this._self, this._then);

  final VisibilityPasswordState _self;
  final $Res Function(VisibilityPasswordState) _then;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? obscurePassword = null,}) {
  return _then(VisibilityPasswordState(
null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RememberMeChangeState extends LoginStates {
  const RememberMeChangeState(this.rememberMe): super._();
  

 final  bool rememberMe;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RememberMeChangeStateCopyWith<RememberMeChangeState> get copyWith => _$RememberMeChangeStateCopyWithImpl<RememberMeChangeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RememberMeChangeState&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}


@override
int get hashCode => Object.hash(runtimeType,rememberMe);

@override
String toString() {
  return 'LoginStates.rememberMeChangeState(rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $RememberMeChangeStateCopyWith<$Res> implements $LoginStatesCopyWith<$Res> {
  factory $RememberMeChangeStateCopyWith(RememberMeChangeState value, $Res Function(RememberMeChangeState) _then) = _$RememberMeChangeStateCopyWithImpl;
@useResult
$Res call({
 bool rememberMe
});




}
/// @nodoc
class _$RememberMeChangeStateCopyWithImpl<$Res>
    implements $RememberMeChangeStateCopyWith<$Res> {
  _$RememberMeChangeStateCopyWithImpl(this._self, this._then);

  final RememberMeChangeState _self;
  final $Res Function(RememberMeChangeState) _then;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rememberMe = null,}) {
  return _then(RememberMeChangeState(
null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadingLogin extends LoginStates {
  const LoadingLogin(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates.loadingLogin()';
}


}




/// @nodoc


class SuccessLogin extends LoginStates {
  const SuccessLogin(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates.successLogin()';
}


}




/// @nodoc


class ErrorLogin extends LoginStates {
  const ErrorLogin(this.errorMessage): super._();
  

 final  String errorMessage;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorLoginCopyWith<ErrorLogin> get copyWith => _$ErrorLoginCopyWithImpl<ErrorLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorLogin&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'LoginStates.errorLogin(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ErrorLoginCopyWith<$Res> implements $LoginStatesCopyWith<$Res> {
  factory $ErrorLoginCopyWith(ErrorLogin value, $Res Function(ErrorLogin) _then) = _$ErrorLoginCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ErrorLoginCopyWithImpl<$Res>
    implements $ErrorLoginCopyWith<$Res> {
  _$ErrorLoginCopyWithImpl(this._self, this._then);

  final ErrorLogin _self;
  final $Res Function(ErrorLogin) _then;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ErrorLogin(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
