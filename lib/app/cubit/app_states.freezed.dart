// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates()';
}


}

/// @nodoc
class $AppStatesCopyWith<$Res>  {
$AppStatesCopyWith(AppStates _, $Res Function(AppStates) __);
}


/// Adds pattern-matching-related methods to [AppStates].
extension AppStatesPatterns on AppStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingChangeNavBar value)?  loadingChangeNavBar,TResult Function( SuccessChangeNavBar value)?  successChangeNavBar,TResult Function( ChangeNavBarVisibility value)?  changeNavBarVisibility,TResult Function( LoadingChangeThemeMode value)?  loadingChangeThemeMode,TResult Function( SuccessChangeThemeMode value)?  successChangeThemeMode,TResult Function( ErrorChangeThemeMode value)?  errorChangeThemeMode,TResult Function( LoadingChangeLanguage value)?  loadingChangeLanguage,TResult Function( SuccessChangeLanguage value)?  successChangeLanguage,TResult Function( ErrorChangeLanguage value)?  errorChangeLanguage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingChangeNavBar() when loadingChangeNavBar != null:
return loadingChangeNavBar(_that);case SuccessChangeNavBar() when successChangeNavBar != null:
return successChangeNavBar(_that);case ChangeNavBarVisibility() when changeNavBarVisibility != null:
return changeNavBarVisibility(_that);case LoadingChangeThemeMode() when loadingChangeThemeMode != null:
return loadingChangeThemeMode(_that);case SuccessChangeThemeMode() when successChangeThemeMode != null:
return successChangeThemeMode(_that);case ErrorChangeThemeMode() when errorChangeThemeMode != null:
return errorChangeThemeMode(_that);case LoadingChangeLanguage() when loadingChangeLanguage != null:
return loadingChangeLanguage(_that);case SuccessChangeLanguage() when successChangeLanguage != null:
return successChangeLanguage(_that);case ErrorChangeLanguage() when errorChangeLanguage != null:
return errorChangeLanguage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingChangeNavBar value)  loadingChangeNavBar,required TResult Function( SuccessChangeNavBar value)  successChangeNavBar,required TResult Function( ChangeNavBarVisibility value)  changeNavBarVisibility,required TResult Function( LoadingChangeThemeMode value)  loadingChangeThemeMode,required TResult Function( SuccessChangeThemeMode value)  successChangeThemeMode,required TResult Function( ErrorChangeThemeMode value)  errorChangeThemeMode,required TResult Function( LoadingChangeLanguage value)  loadingChangeLanguage,required TResult Function( SuccessChangeLanguage value)  successChangeLanguage,required TResult Function( ErrorChangeLanguage value)  errorChangeLanguage,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingChangeNavBar():
return loadingChangeNavBar(_that);case SuccessChangeNavBar():
return successChangeNavBar(_that);case ChangeNavBarVisibility():
return changeNavBarVisibility(_that);case LoadingChangeThemeMode():
return loadingChangeThemeMode(_that);case SuccessChangeThemeMode():
return successChangeThemeMode(_that);case ErrorChangeThemeMode():
return errorChangeThemeMode(_that);case LoadingChangeLanguage():
return loadingChangeLanguage(_that);case SuccessChangeLanguage():
return successChangeLanguage(_that);case ErrorChangeLanguage():
return errorChangeLanguage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingChangeNavBar value)?  loadingChangeNavBar,TResult? Function( SuccessChangeNavBar value)?  successChangeNavBar,TResult? Function( ChangeNavBarVisibility value)?  changeNavBarVisibility,TResult? Function( LoadingChangeThemeMode value)?  loadingChangeThemeMode,TResult? Function( SuccessChangeThemeMode value)?  successChangeThemeMode,TResult? Function( ErrorChangeThemeMode value)?  errorChangeThemeMode,TResult? Function( LoadingChangeLanguage value)?  loadingChangeLanguage,TResult? Function( SuccessChangeLanguage value)?  successChangeLanguage,TResult? Function( ErrorChangeLanguage value)?  errorChangeLanguage,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingChangeNavBar() when loadingChangeNavBar != null:
return loadingChangeNavBar(_that);case SuccessChangeNavBar() when successChangeNavBar != null:
return successChangeNavBar(_that);case ChangeNavBarVisibility() when changeNavBarVisibility != null:
return changeNavBarVisibility(_that);case LoadingChangeThemeMode() when loadingChangeThemeMode != null:
return loadingChangeThemeMode(_that);case SuccessChangeThemeMode() when successChangeThemeMode != null:
return successChangeThemeMode(_that);case ErrorChangeThemeMode() when errorChangeThemeMode != null:
return errorChangeThemeMode(_that);case LoadingChangeLanguage() when loadingChangeLanguage != null:
return loadingChangeLanguage(_that);case SuccessChangeLanguage() when successChangeLanguage != null:
return successChangeLanguage(_that);case ErrorChangeLanguage() when errorChangeLanguage != null:
return errorChangeLanguage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingChangeNavBar,TResult Function( int index)?  successChangeNavBar,TResult Function( bool isVisible)?  changeNavBarVisibility,TResult Function()?  loadingChangeThemeMode,TResult Function()?  successChangeThemeMode,TResult Function()?  errorChangeThemeMode,TResult Function()?  loadingChangeLanguage,TResult Function()?  successChangeLanguage,TResult Function()?  errorChangeLanguage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingChangeNavBar() when loadingChangeNavBar != null:
return loadingChangeNavBar();case SuccessChangeNavBar() when successChangeNavBar != null:
return successChangeNavBar(_that.index);case ChangeNavBarVisibility() when changeNavBarVisibility != null:
return changeNavBarVisibility(_that.isVisible);case LoadingChangeThemeMode() when loadingChangeThemeMode != null:
return loadingChangeThemeMode();case SuccessChangeThemeMode() when successChangeThemeMode != null:
return successChangeThemeMode();case ErrorChangeThemeMode() when errorChangeThemeMode != null:
return errorChangeThemeMode();case LoadingChangeLanguage() when loadingChangeLanguage != null:
return loadingChangeLanguage();case SuccessChangeLanguage() when successChangeLanguage != null:
return successChangeLanguage();case ErrorChangeLanguage() when errorChangeLanguage != null:
return errorChangeLanguage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingChangeNavBar,required TResult Function( int index)  successChangeNavBar,required TResult Function( bool isVisible)  changeNavBarVisibility,required TResult Function()  loadingChangeThemeMode,required TResult Function()  successChangeThemeMode,required TResult Function()  errorChangeThemeMode,required TResult Function()  loadingChangeLanguage,required TResult Function()  successChangeLanguage,required TResult Function()  errorChangeLanguage,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingChangeNavBar():
return loadingChangeNavBar();case SuccessChangeNavBar():
return successChangeNavBar(_that.index);case ChangeNavBarVisibility():
return changeNavBarVisibility(_that.isVisible);case LoadingChangeThemeMode():
return loadingChangeThemeMode();case SuccessChangeThemeMode():
return successChangeThemeMode();case ErrorChangeThemeMode():
return errorChangeThemeMode();case LoadingChangeLanguage():
return loadingChangeLanguage();case SuccessChangeLanguage():
return successChangeLanguage();case ErrorChangeLanguage():
return errorChangeLanguage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingChangeNavBar,TResult? Function( int index)?  successChangeNavBar,TResult? Function( bool isVisible)?  changeNavBarVisibility,TResult? Function()?  loadingChangeThemeMode,TResult? Function()?  successChangeThemeMode,TResult? Function()?  errorChangeThemeMode,TResult? Function()?  loadingChangeLanguage,TResult? Function()?  successChangeLanguage,TResult? Function()?  errorChangeLanguage,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingChangeNavBar() when loadingChangeNavBar != null:
return loadingChangeNavBar();case SuccessChangeNavBar() when successChangeNavBar != null:
return successChangeNavBar(_that.index);case ChangeNavBarVisibility() when changeNavBarVisibility != null:
return changeNavBarVisibility(_that.isVisible);case LoadingChangeThemeMode() when loadingChangeThemeMode != null:
return loadingChangeThemeMode();case SuccessChangeThemeMode() when successChangeThemeMode != null:
return successChangeThemeMode();case ErrorChangeThemeMode() when errorChangeThemeMode != null:
return errorChangeThemeMode();case LoadingChangeLanguage() when loadingChangeLanguage != null:
return loadingChangeLanguage();case SuccessChangeLanguage() when successChangeLanguage != null:
return successChangeLanguage();case ErrorChangeLanguage() when errorChangeLanguage != null:
return errorChangeLanguage();case _:
  return null;

}
}

}

/// @nodoc


class Initial extends AppStates {
  const Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.initial()';
}


}




/// @nodoc


class LoadingChangeNavBar extends AppStates {
  const LoadingChangeNavBar(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingChangeNavBar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.loadingChangeNavBar()';
}


}




/// @nodoc


class SuccessChangeNavBar extends AppStates {
  const SuccessChangeNavBar(this.index): super._();
  

 final  int index;

/// Create a copy of AppStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessChangeNavBarCopyWith<SuccessChangeNavBar> get copyWith => _$SuccessChangeNavBarCopyWithImpl<SuccessChangeNavBar>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessChangeNavBar&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'AppStates.successChangeNavBar(index: $index)';
}


}

/// @nodoc
abstract mixin class $SuccessChangeNavBarCopyWith<$Res> implements $AppStatesCopyWith<$Res> {
  factory $SuccessChangeNavBarCopyWith(SuccessChangeNavBar value, $Res Function(SuccessChangeNavBar) _then) = _$SuccessChangeNavBarCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$SuccessChangeNavBarCopyWithImpl<$Res>
    implements $SuccessChangeNavBarCopyWith<$Res> {
  _$SuccessChangeNavBarCopyWithImpl(this._self, this._then);

  final SuccessChangeNavBar _self;
  final $Res Function(SuccessChangeNavBar) _then;

/// Create a copy of AppStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(SuccessChangeNavBar(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ChangeNavBarVisibility extends AppStates {
  const ChangeNavBarVisibility(this.isVisible): super._();
  

 final  bool isVisible;

/// Create a copy of AppStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeNavBarVisibilityCopyWith<ChangeNavBarVisibility> get copyWith => _$ChangeNavBarVisibilityCopyWithImpl<ChangeNavBarVisibility>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeNavBarVisibility&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,isVisible);

@override
String toString() {
  return 'AppStates.changeNavBarVisibility(isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $ChangeNavBarVisibilityCopyWith<$Res> implements $AppStatesCopyWith<$Res> {
  factory $ChangeNavBarVisibilityCopyWith(ChangeNavBarVisibility value, $Res Function(ChangeNavBarVisibility) _then) = _$ChangeNavBarVisibilityCopyWithImpl;
@useResult
$Res call({
 bool isVisible
});




}
/// @nodoc
class _$ChangeNavBarVisibilityCopyWithImpl<$Res>
    implements $ChangeNavBarVisibilityCopyWith<$Res> {
  _$ChangeNavBarVisibilityCopyWithImpl(this._self, this._then);

  final ChangeNavBarVisibility _self;
  final $Res Function(ChangeNavBarVisibility) _then;

/// Create a copy of AppStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isVisible = null,}) {
  return _then(ChangeNavBarVisibility(
null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadingChangeThemeMode extends AppStates {
  const LoadingChangeThemeMode(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingChangeThemeMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.loadingChangeThemeMode()';
}


}




/// @nodoc


class SuccessChangeThemeMode extends AppStates {
  const SuccessChangeThemeMode(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessChangeThemeMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.successChangeThemeMode()';
}


}




/// @nodoc


class ErrorChangeThemeMode extends AppStates {
  const ErrorChangeThemeMode(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorChangeThemeMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.errorChangeThemeMode()';
}


}




/// @nodoc


class LoadingChangeLanguage extends AppStates {
  const LoadingChangeLanguage(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingChangeLanguage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.loadingChangeLanguage()';
}


}




/// @nodoc


class SuccessChangeLanguage extends AppStates {
  const SuccessChangeLanguage(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessChangeLanguage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.successChangeLanguage()';
}


}




/// @nodoc


class ErrorChangeLanguage extends AppStates {
  const ErrorChangeLanguage(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorChangeLanguage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppStates.errorChangeLanguage()';
}


}




// dart format on
