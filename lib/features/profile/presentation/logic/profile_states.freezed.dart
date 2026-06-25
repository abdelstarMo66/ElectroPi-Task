// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates()';
}


}

/// @nodoc
class $ProfileStatesCopyWith<$Res>  {
$ProfileStatesCopyWith(ProfileStates _, $Res Function(ProfileStates) __);
}


/// Adds pattern-matching-related methods to [ProfileStates].
extension ProfileStatesPatterns on ProfileStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( LoadingProfile value)?  loadingProfile,TResult Function( SuccessProfile value)?  successProfile,TResult Function( ErrorProfile value)?  errorProfile,TResult Function( LoadingUpdateProfile value)?  loadingUpdateProfile,TResult Function( SuccessUpdateProfile value)?  successUpdateProfile,TResult Function( ErrorUpdateProfile value)?  errorUpdateProfile,TResult Function( LoadingChangePassword value)?  loadingChangePassword,TResult Function( SuccessChangePassword value)?  successChangePassword,TResult Function( ErrorChangePassword value)?  errorChangePassword,TResult Function( LoadingAddAddress value)?  loadingAddAddress,TResult Function( SuccessAddAddress value)?  successAddAddress,TResult Function( ErrorAddAddress value)?  errorAddAddress,TResult Function( LoadingDeleteAddress value)?  loadingDeleteAddress,TResult Function( SuccessDeleteAddress value)?  successDeleteAddress,TResult Function( ErrorDeleteAddress value)?  errorDeleteAddress,TResult Function( LoadingSetAddressAsDefault value)?  loadingSetAddressAsDefault,TResult Function( SuccessSetAddressAsDefault value)?  successSetAddressAsDefault,TResult Function( ErrorSetAddressAsDefault value)?  errorSetAddressAsDefault,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case LoadingProfile() when loadingProfile != null:
return loadingProfile(_that);case SuccessProfile() when successProfile != null:
return successProfile(_that);case ErrorProfile() when errorProfile != null:
return errorProfile(_that);case LoadingUpdateProfile() when loadingUpdateProfile != null:
return loadingUpdateProfile(_that);case SuccessUpdateProfile() when successUpdateProfile != null:
return successUpdateProfile(_that);case ErrorUpdateProfile() when errorUpdateProfile != null:
return errorUpdateProfile(_that);case LoadingChangePassword() when loadingChangePassword != null:
return loadingChangePassword(_that);case SuccessChangePassword() when successChangePassword != null:
return successChangePassword(_that);case ErrorChangePassword() when errorChangePassword != null:
return errorChangePassword(_that);case LoadingAddAddress() when loadingAddAddress != null:
return loadingAddAddress(_that);case SuccessAddAddress() when successAddAddress != null:
return successAddAddress(_that);case ErrorAddAddress() when errorAddAddress != null:
return errorAddAddress(_that);case LoadingDeleteAddress() when loadingDeleteAddress != null:
return loadingDeleteAddress(_that);case SuccessDeleteAddress() when successDeleteAddress != null:
return successDeleteAddress(_that);case ErrorDeleteAddress() when errorDeleteAddress != null:
return errorDeleteAddress(_that);case LoadingSetAddressAsDefault() when loadingSetAddressAsDefault != null:
return loadingSetAddressAsDefault(_that);case SuccessSetAddressAsDefault() when successSetAddressAsDefault != null:
return successSetAddressAsDefault(_that);case ErrorSetAddressAsDefault() when errorSetAddressAsDefault != null:
return errorSetAddressAsDefault(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( LoadingProfile value)  loadingProfile,required TResult Function( SuccessProfile value)  successProfile,required TResult Function( ErrorProfile value)  errorProfile,required TResult Function( LoadingUpdateProfile value)  loadingUpdateProfile,required TResult Function( SuccessUpdateProfile value)  successUpdateProfile,required TResult Function( ErrorUpdateProfile value)  errorUpdateProfile,required TResult Function( LoadingChangePassword value)  loadingChangePassword,required TResult Function( SuccessChangePassword value)  successChangePassword,required TResult Function( ErrorChangePassword value)  errorChangePassword,required TResult Function( LoadingAddAddress value)  loadingAddAddress,required TResult Function( SuccessAddAddress value)  successAddAddress,required TResult Function( ErrorAddAddress value)  errorAddAddress,required TResult Function( LoadingDeleteAddress value)  loadingDeleteAddress,required TResult Function( SuccessDeleteAddress value)  successDeleteAddress,required TResult Function( ErrorDeleteAddress value)  errorDeleteAddress,required TResult Function( LoadingSetAddressAsDefault value)  loadingSetAddressAsDefault,required TResult Function( SuccessSetAddressAsDefault value)  successSetAddressAsDefault,required TResult Function( ErrorSetAddressAsDefault value)  errorSetAddressAsDefault,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case LoadingProfile():
return loadingProfile(_that);case SuccessProfile():
return successProfile(_that);case ErrorProfile():
return errorProfile(_that);case LoadingUpdateProfile():
return loadingUpdateProfile(_that);case SuccessUpdateProfile():
return successUpdateProfile(_that);case ErrorUpdateProfile():
return errorUpdateProfile(_that);case LoadingChangePassword():
return loadingChangePassword(_that);case SuccessChangePassword():
return successChangePassword(_that);case ErrorChangePassword():
return errorChangePassword(_that);case LoadingAddAddress():
return loadingAddAddress(_that);case SuccessAddAddress():
return successAddAddress(_that);case ErrorAddAddress():
return errorAddAddress(_that);case LoadingDeleteAddress():
return loadingDeleteAddress(_that);case SuccessDeleteAddress():
return successDeleteAddress(_that);case ErrorDeleteAddress():
return errorDeleteAddress(_that);case LoadingSetAddressAsDefault():
return loadingSetAddressAsDefault(_that);case SuccessSetAddressAsDefault():
return successSetAddressAsDefault(_that);case ErrorSetAddressAsDefault():
return errorSetAddressAsDefault(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( LoadingProfile value)?  loadingProfile,TResult? Function( SuccessProfile value)?  successProfile,TResult? Function( ErrorProfile value)?  errorProfile,TResult? Function( LoadingUpdateProfile value)?  loadingUpdateProfile,TResult? Function( SuccessUpdateProfile value)?  successUpdateProfile,TResult? Function( ErrorUpdateProfile value)?  errorUpdateProfile,TResult? Function( LoadingChangePassword value)?  loadingChangePassword,TResult? Function( SuccessChangePassword value)?  successChangePassword,TResult? Function( ErrorChangePassword value)?  errorChangePassword,TResult? Function( LoadingAddAddress value)?  loadingAddAddress,TResult? Function( SuccessAddAddress value)?  successAddAddress,TResult? Function( ErrorAddAddress value)?  errorAddAddress,TResult? Function( LoadingDeleteAddress value)?  loadingDeleteAddress,TResult? Function( SuccessDeleteAddress value)?  successDeleteAddress,TResult? Function( ErrorDeleteAddress value)?  errorDeleteAddress,TResult? Function( LoadingSetAddressAsDefault value)?  loadingSetAddressAsDefault,TResult? Function( SuccessSetAddressAsDefault value)?  successSetAddressAsDefault,TResult? Function( ErrorSetAddressAsDefault value)?  errorSetAddressAsDefault,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case LoadingProfile() when loadingProfile != null:
return loadingProfile(_that);case SuccessProfile() when successProfile != null:
return successProfile(_that);case ErrorProfile() when errorProfile != null:
return errorProfile(_that);case LoadingUpdateProfile() when loadingUpdateProfile != null:
return loadingUpdateProfile(_that);case SuccessUpdateProfile() when successUpdateProfile != null:
return successUpdateProfile(_that);case ErrorUpdateProfile() when errorUpdateProfile != null:
return errorUpdateProfile(_that);case LoadingChangePassword() when loadingChangePassword != null:
return loadingChangePassword(_that);case SuccessChangePassword() when successChangePassword != null:
return successChangePassword(_that);case ErrorChangePassword() when errorChangePassword != null:
return errorChangePassword(_that);case LoadingAddAddress() when loadingAddAddress != null:
return loadingAddAddress(_that);case SuccessAddAddress() when successAddAddress != null:
return successAddAddress(_that);case ErrorAddAddress() when errorAddAddress != null:
return errorAddAddress(_that);case LoadingDeleteAddress() when loadingDeleteAddress != null:
return loadingDeleteAddress(_that);case SuccessDeleteAddress() when successDeleteAddress != null:
return successDeleteAddress(_that);case ErrorDeleteAddress() when errorDeleteAddress != null:
return errorDeleteAddress(_that);case LoadingSetAddressAsDefault() when loadingSetAddressAsDefault != null:
return loadingSetAddressAsDefault(_that);case SuccessSetAddressAsDefault() when successSetAddressAsDefault != null:
return successSetAddressAsDefault(_that);case ErrorSetAddressAsDefault() when errorSetAddressAsDefault != null:
return errorSetAddressAsDefault(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loadingProfile,TResult Function( UserEntity user)?  successProfile,TResult Function( String error)?  errorProfile,TResult Function()?  loadingUpdateProfile,TResult Function( UserEntity user)?  successUpdateProfile,TResult Function( String error)?  errorUpdateProfile,TResult Function()?  loadingChangePassword,TResult Function()?  successChangePassword,TResult Function( String error)?  errorChangePassword,TResult Function()?  loadingAddAddress,TResult Function( UserEntity user)?  successAddAddress,TResult Function( String error)?  errorAddAddress,TResult Function()?  loadingDeleteAddress,TResult Function( UserEntity user)?  successDeleteAddress,TResult Function( String error)?  errorDeleteAddress,TResult Function()?  loadingSetAddressAsDefault,TResult Function( UserEntity user)?  successSetAddressAsDefault,TResult Function( String error)?  errorSetAddressAsDefault,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case LoadingProfile() when loadingProfile != null:
return loadingProfile();case SuccessProfile() when successProfile != null:
return successProfile(_that.user);case ErrorProfile() when errorProfile != null:
return errorProfile(_that.error);case LoadingUpdateProfile() when loadingUpdateProfile != null:
return loadingUpdateProfile();case SuccessUpdateProfile() when successUpdateProfile != null:
return successUpdateProfile(_that.user);case ErrorUpdateProfile() when errorUpdateProfile != null:
return errorUpdateProfile(_that.error);case LoadingChangePassword() when loadingChangePassword != null:
return loadingChangePassword();case SuccessChangePassword() when successChangePassword != null:
return successChangePassword();case ErrorChangePassword() when errorChangePassword != null:
return errorChangePassword(_that.error);case LoadingAddAddress() when loadingAddAddress != null:
return loadingAddAddress();case SuccessAddAddress() when successAddAddress != null:
return successAddAddress(_that.user);case ErrorAddAddress() when errorAddAddress != null:
return errorAddAddress(_that.error);case LoadingDeleteAddress() when loadingDeleteAddress != null:
return loadingDeleteAddress();case SuccessDeleteAddress() when successDeleteAddress != null:
return successDeleteAddress(_that.user);case ErrorDeleteAddress() when errorDeleteAddress != null:
return errorDeleteAddress(_that.error);case LoadingSetAddressAsDefault() when loadingSetAddressAsDefault != null:
return loadingSetAddressAsDefault();case SuccessSetAddressAsDefault() when successSetAddressAsDefault != null:
return successSetAddressAsDefault(_that.user);case ErrorSetAddressAsDefault() when errorSetAddressAsDefault != null:
return errorSetAddressAsDefault(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loadingProfile,required TResult Function( UserEntity user)  successProfile,required TResult Function( String error)  errorProfile,required TResult Function()  loadingUpdateProfile,required TResult Function( UserEntity user)  successUpdateProfile,required TResult Function( String error)  errorUpdateProfile,required TResult Function()  loadingChangePassword,required TResult Function()  successChangePassword,required TResult Function( String error)  errorChangePassword,required TResult Function()  loadingAddAddress,required TResult Function( UserEntity user)  successAddAddress,required TResult Function( String error)  errorAddAddress,required TResult Function()  loadingDeleteAddress,required TResult Function( UserEntity user)  successDeleteAddress,required TResult Function( String error)  errorDeleteAddress,required TResult Function()  loadingSetAddressAsDefault,required TResult Function( UserEntity user)  successSetAddressAsDefault,required TResult Function( String error)  errorSetAddressAsDefault,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case LoadingProfile():
return loadingProfile();case SuccessProfile():
return successProfile(_that.user);case ErrorProfile():
return errorProfile(_that.error);case LoadingUpdateProfile():
return loadingUpdateProfile();case SuccessUpdateProfile():
return successUpdateProfile(_that.user);case ErrorUpdateProfile():
return errorUpdateProfile(_that.error);case LoadingChangePassword():
return loadingChangePassword();case SuccessChangePassword():
return successChangePassword();case ErrorChangePassword():
return errorChangePassword(_that.error);case LoadingAddAddress():
return loadingAddAddress();case SuccessAddAddress():
return successAddAddress(_that.user);case ErrorAddAddress():
return errorAddAddress(_that.error);case LoadingDeleteAddress():
return loadingDeleteAddress();case SuccessDeleteAddress():
return successDeleteAddress(_that.user);case ErrorDeleteAddress():
return errorDeleteAddress(_that.error);case LoadingSetAddressAsDefault():
return loadingSetAddressAsDefault();case SuccessSetAddressAsDefault():
return successSetAddressAsDefault(_that.user);case ErrorSetAddressAsDefault():
return errorSetAddressAsDefault(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loadingProfile,TResult? Function( UserEntity user)?  successProfile,TResult? Function( String error)?  errorProfile,TResult? Function()?  loadingUpdateProfile,TResult? Function( UserEntity user)?  successUpdateProfile,TResult? Function( String error)?  errorUpdateProfile,TResult? Function()?  loadingChangePassword,TResult? Function()?  successChangePassword,TResult? Function( String error)?  errorChangePassword,TResult? Function()?  loadingAddAddress,TResult? Function( UserEntity user)?  successAddAddress,TResult? Function( String error)?  errorAddAddress,TResult? Function()?  loadingDeleteAddress,TResult? Function( UserEntity user)?  successDeleteAddress,TResult? Function( String error)?  errorDeleteAddress,TResult? Function()?  loadingSetAddressAsDefault,TResult? Function( UserEntity user)?  successSetAddressAsDefault,TResult? Function( String error)?  errorSetAddressAsDefault,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case LoadingProfile() when loadingProfile != null:
return loadingProfile();case SuccessProfile() when successProfile != null:
return successProfile(_that.user);case ErrorProfile() when errorProfile != null:
return errorProfile(_that.error);case LoadingUpdateProfile() when loadingUpdateProfile != null:
return loadingUpdateProfile();case SuccessUpdateProfile() when successUpdateProfile != null:
return successUpdateProfile(_that.user);case ErrorUpdateProfile() when errorUpdateProfile != null:
return errorUpdateProfile(_that.error);case LoadingChangePassword() when loadingChangePassword != null:
return loadingChangePassword();case SuccessChangePassword() when successChangePassword != null:
return successChangePassword();case ErrorChangePassword() when errorChangePassword != null:
return errorChangePassword(_that.error);case LoadingAddAddress() when loadingAddAddress != null:
return loadingAddAddress();case SuccessAddAddress() when successAddAddress != null:
return successAddAddress(_that.user);case ErrorAddAddress() when errorAddAddress != null:
return errorAddAddress(_that.error);case LoadingDeleteAddress() when loadingDeleteAddress != null:
return loadingDeleteAddress();case SuccessDeleteAddress() when successDeleteAddress != null:
return successDeleteAddress(_that.user);case ErrorDeleteAddress() when errorDeleteAddress != null:
return errorDeleteAddress(_that.error);case LoadingSetAddressAsDefault() when loadingSetAddressAsDefault != null:
return loadingSetAddressAsDefault();case SuccessSetAddressAsDefault() when successSetAddressAsDefault != null:
return successSetAddressAsDefault(_that.user);case ErrorSetAddressAsDefault() when errorSetAddressAsDefault != null:
return errorSetAddressAsDefault(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements ProfileStates {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.initial()';
}


}




/// @nodoc


class Loading implements ProfileStates {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loading()';
}


}




/// @nodoc


class LoadingProfile implements ProfileStates {
  const LoadingProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loadingProfile()';
}


}




/// @nodoc


class SuccessProfile implements ProfileStates {
  const SuccessProfile(this.user);
  

 final  UserEntity user;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessProfileCopyWith<SuccessProfile> get copyWith => _$SuccessProfileCopyWithImpl<SuccessProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessProfile&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileStates.successProfile(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessProfileCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $SuccessProfileCopyWith(SuccessProfile value, $Res Function(SuccessProfile) _then) = _$SuccessProfileCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$SuccessProfileCopyWithImpl<$Res>
    implements $SuccessProfileCopyWith<$Res> {
  _$SuccessProfileCopyWithImpl(this._self, this._then);

  final SuccessProfile _self;
  final $Res Function(SuccessProfile) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessProfile(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class ErrorProfile implements ProfileStates {
  const ErrorProfile(this.error);
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorProfileCopyWith<ErrorProfile> get copyWith => _$ErrorProfileCopyWithImpl<ErrorProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorProfile&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates.errorProfile(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorProfileCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $ErrorProfileCopyWith(ErrorProfile value, $Res Function(ErrorProfile) _then) = _$ErrorProfileCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorProfileCopyWithImpl<$Res>
    implements $ErrorProfileCopyWith<$Res> {
  _$ErrorProfileCopyWithImpl(this._self, this._then);

  final ErrorProfile _self;
  final $Res Function(ErrorProfile) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorProfile(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingUpdateProfile implements ProfileStates {
  const LoadingUpdateProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingUpdateProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loadingUpdateProfile()';
}


}




/// @nodoc


class SuccessUpdateProfile implements ProfileStates {
  const SuccessUpdateProfile(this.user);
  

 final  UserEntity user;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessUpdateProfileCopyWith<SuccessUpdateProfile> get copyWith => _$SuccessUpdateProfileCopyWithImpl<SuccessUpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessUpdateProfile&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileStates.successUpdateProfile(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessUpdateProfileCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $SuccessUpdateProfileCopyWith(SuccessUpdateProfile value, $Res Function(SuccessUpdateProfile) _then) = _$SuccessUpdateProfileCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$SuccessUpdateProfileCopyWithImpl<$Res>
    implements $SuccessUpdateProfileCopyWith<$Res> {
  _$SuccessUpdateProfileCopyWithImpl(this._self, this._then);

  final SuccessUpdateProfile _self;
  final $Res Function(SuccessUpdateProfile) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessUpdateProfile(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class ErrorUpdateProfile implements ProfileStates {
  const ErrorUpdateProfile(this.error);
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorUpdateProfileCopyWith<ErrorUpdateProfile> get copyWith => _$ErrorUpdateProfileCopyWithImpl<ErrorUpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorUpdateProfile&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates.errorUpdateProfile(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorUpdateProfileCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $ErrorUpdateProfileCopyWith(ErrorUpdateProfile value, $Res Function(ErrorUpdateProfile) _then) = _$ErrorUpdateProfileCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorUpdateProfileCopyWithImpl<$Res>
    implements $ErrorUpdateProfileCopyWith<$Res> {
  _$ErrorUpdateProfileCopyWithImpl(this._self, this._then);

  final ErrorUpdateProfile _self;
  final $Res Function(ErrorUpdateProfile) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorUpdateProfile(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingChangePassword implements ProfileStates {
  const LoadingChangePassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingChangePassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loadingChangePassword()';
}


}




/// @nodoc


class SuccessChangePassword implements ProfileStates {
  const SuccessChangePassword();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessChangePassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.successChangePassword()';
}


}




/// @nodoc


class ErrorChangePassword implements ProfileStates {
  const ErrorChangePassword(this.error);
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorChangePasswordCopyWith<ErrorChangePassword> get copyWith => _$ErrorChangePasswordCopyWithImpl<ErrorChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorChangePassword&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates.errorChangePassword(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorChangePasswordCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $ErrorChangePasswordCopyWith(ErrorChangePassword value, $Res Function(ErrorChangePassword) _then) = _$ErrorChangePasswordCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorChangePasswordCopyWithImpl<$Res>
    implements $ErrorChangePasswordCopyWith<$Res> {
  _$ErrorChangePasswordCopyWithImpl(this._self, this._then);

  final ErrorChangePassword _self;
  final $Res Function(ErrorChangePassword) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorChangePassword(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingAddAddress implements ProfileStates {
  const LoadingAddAddress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingAddAddress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loadingAddAddress()';
}


}




/// @nodoc


class SuccessAddAddress implements ProfileStates {
  const SuccessAddAddress(this.user);
  

 final  UserEntity user;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessAddAddressCopyWith<SuccessAddAddress> get copyWith => _$SuccessAddAddressCopyWithImpl<SuccessAddAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessAddAddress&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileStates.successAddAddress(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessAddAddressCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $SuccessAddAddressCopyWith(SuccessAddAddress value, $Res Function(SuccessAddAddress) _then) = _$SuccessAddAddressCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$SuccessAddAddressCopyWithImpl<$Res>
    implements $SuccessAddAddressCopyWith<$Res> {
  _$SuccessAddAddressCopyWithImpl(this._self, this._then);

  final SuccessAddAddress _self;
  final $Res Function(SuccessAddAddress) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessAddAddress(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class ErrorAddAddress implements ProfileStates {
  const ErrorAddAddress(this.error);
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorAddAddressCopyWith<ErrorAddAddress> get copyWith => _$ErrorAddAddressCopyWithImpl<ErrorAddAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorAddAddress&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates.errorAddAddress(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorAddAddressCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $ErrorAddAddressCopyWith(ErrorAddAddress value, $Res Function(ErrorAddAddress) _then) = _$ErrorAddAddressCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorAddAddressCopyWithImpl<$Res>
    implements $ErrorAddAddressCopyWith<$Res> {
  _$ErrorAddAddressCopyWithImpl(this._self, this._then);

  final ErrorAddAddress _self;
  final $Res Function(ErrorAddAddress) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorAddAddress(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingDeleteAddress implements ProfileStates {
  const LoadingDeleteAddress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingDeleteAddress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loadingDeleteAddress()';
}


}




/// @nodoc


class SuccessDeleteAddress implements ProfileStates {
  const SuccessDeleteAddress(this.user);
  

 final  UserEntity user;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessDeleteAddressCopyWith<SuccessDeleteAddress> get copyWith => _$SuccessDeleteAddressCopyWithImpl<SuccessDeleteAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessDeleteAddress&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileStates.successDeleteAddress(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessDeleteAddressCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $SuccessDeleteAddressCopyWith(SuccessDeleteAddress value, $Res Function(SuccessDeleteAddress) _then) = _$SuccessDeleteAddressCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$SuccessDeleteAddressCopyWithImpl<$Res>
    implements $SuccessDeleteAddressCopyWith<$Res> {
  _$SuccessDeleteAddressCopyWithImpl(this._self, this._then);

  final SuccessDeleteAddress _self;
  final $Res Function(SuccessDeleteAddress) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessDeleteAddress(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class ErrorDeleteAddress implements ProfileStates {
  const ErrorDeleteAddress(this.error);
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDeleteAddressCopyWith<ErrorDeleteAddress> get copyWith => _$ErrorDeleteAddressCopyWithImpl<ErrorDeleteAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDeleteAddress&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates.errorDeleteAddress(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorDeleteAddressCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $ErrorDeleteAddressCopyWith(ErrorDeleteAddress value, $Res Function(ErrorDeleteAddress) _then) = _$ErrorDeleteAddressCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorDeleteAddressCopyWithImpl<$Res>
    implements $ErrorDeleteAddressCopyWith<$Res> {
  _$ErrorDeleteAddressCopyWithImpl(this._self, this._then);

  final ErrorDeleteAddress _self;
  final $Res Function(ErrorDeleteAddress) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorDeleteAddress(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingSetAddressAsDefault implements ProfileStates {
  const LoadingSetAddressAsDefault();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSetAddressAsDefault);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileStates.loadingSetAddressAsDefault()';
}


}




/// @nodoc


class SuccessSetAddressAsDefault implements ProfileStates {
  const SuccessSetAddressAsDefault(this.user);
  

 final  UserEntity user;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessSetAddressAsDefaultCopyWith<SuccessSetAddressAsDefault> get copyWith => _$SuccessSetAddressAsDefaultCopyWithImpl<SuccessSetAddressAsDefault>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessSetAddressAsDefault&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileStates.successSetAddressAsDefault(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessSetAddressAsDefaultCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $SuccessSetAddressAsDefaultCopyWith(SuccessSetAddressAsDefault value, $Res Function(SuccessSetAddressAsDefault) _then) = _$SuccessSetAddressAsDefaultCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$SuccessSetAddressAsDefaultCopyWithImpl<$Res>
    implements $SuccessSetAddressAsDefaultCopyWith<$Res> {
  _$SuccessSetAddressAsDefaultCopyWithImpl(this._self, this._then);

  final SuccessSetAddressAsDefault _self;
  final $Res Function(SuccessSetAddressAsDefault) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessSetAddressAsDefault(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class ErrorSetAddressAsDefault implements ProfileStates {
  const ErrorSetAddressAsDefault(this.error);
  

 final  String error;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSetAddressAsDefaultCopyWith<ErrorSetAddressAsDefault> get copyWith => _$ErrorSetAddressAsDefaultCopyWithImpl<ErrorSetAddressAsDefault>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSetAddressAsDefault&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ProfileStates.errorSetAddressAsDefault(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorSetAddressAsDefaultCopyWith<$Res> implements $ProfileStatesCopyWith<$Res> {
  factory $ErrorSetAddressAsDefaultCopyWith(ErrorSetAddressAsDefault value, $Res Function(ErrorSetAddressAsDefault) _then) = _$ErrorSetAddressAsDefaultCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorSetAddressAsDefaultCopyWithImpl<$Res>
    implements $ErrorSetAddressAsDefaultCopyWith<$Res> {
  _$ErrorSetAddressAsDefaultCopyWithImpl(this._self, this._then);

  final ErrorSetAddressAsDefault _self;
  final $Res Function(ErrorSetAddressAsDefault) _then;

/// Create a copy of ProfileStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorSetAddressAsDefault(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
