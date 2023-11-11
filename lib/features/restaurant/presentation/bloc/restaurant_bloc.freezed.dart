// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRestaurants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRestaurants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRestaurants,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestaurants value) getRestaurants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestaurants value)? getRestaurants,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestaurants value)? getRestaurants,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantEventCopyWith<$Res> {
  factory $RestaurantEventCopyWith(
          RestaurantEvent value, $Res Function(RestaurantEvent) then) =
      _$RestaurantEventCopyWithImpl<$Res, RestaurantEvent>;
}

/// @nodoc
class _$RestaurantEventCopyWithImpl<$Res, $Val extends RestaurantEvent>
    implements $RestaurantEventCopyWith<$Res> {
  _$RestaurantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRestaurantsImplCopyWith<$Res> {
  factory _$$GetRestaurantsImplCopyWith(_$GetRestaurantsImpl value,
          $Res Function(_$GetRestaurantsImpl) then) =
      __$$GetRestaurantsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRestaurantsImplCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res, _$GetRestaurantsImpl>
    implements _$$GetRestaurantsImplCopyWith<$Res> {
  __$$GetRestaurantsImplCopyWithImpl(
      _$GetRestaurantsImpl _value, $Res Function(_$GetRestaurantsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRestaurantsImpl
    with DiagnosticableTreeMixin
    implements _GetRestaurants {
  const _$GetRestaurantsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantEvent.getRestaurants()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RestaurantEvent.getRestaurants'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRestaurantsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRestaurants,
  }) {
    return getRestaurants();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRestaurants,
  }) {
    return getRestaurants?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRestaurants,
    required TResult orElse(),
  }) {
    if (getRestaurants != null) {
      return getRestaurants();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestaurants value) getRestaurants,
  }) {
    return getRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestaurants value)? getRestaurants,
  }) {
    return getRestaurants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestaurants value)? getRestaurants,
    required TResult orElse(),
  }) {
    if (getRestaurants != null) {
      return getRestaurants(this);
    }
    return orElse();
  }
}

abstract class _GetRestaurants implements RestaurantEvent {
  const factory _GetRestaurants() = _$GetRestaurantsImpl;
}

/// @nodoc
mixin _$RestaurantState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RestaurantModel> restaurants) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RestaurantModel> restaurants)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RestaurantModel> restaurants)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestaurantStateInitial value) initial,
    required TResult Function(RestaurantStateLoading value) loading,
    required TResult Function(RestaurantStateLoaded value) loaded,
    required TResult Function(RestaurantStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestaurantStateInitial value)? initial,
    TResult? Function(RestaurantStateLoading value)? loading,
    TResult? Function(RestaurantStateLoaded value)? loaded,
    TResult? Function(RestaurantStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestaurantStateInitial value)? initial,
    TResult Function(RestaurantStateLoading value)? loading,
    TResult Function(RestaurantStateLoaded value)? loaded,
    TResult Function(RestaurantStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res, RestaurantState>;
}

/// @nodoc
class _$RestaurantStateCopyWithImpl<$Res, $Val extends RestaurantState>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RestaurantStateInitialImplCopyWith<$Res> {
  factory _$$RestaurantStateInitialImplCopyWith(
          _$RestaurantStateInitialImpl value,
          $Res Function(_$RestaurantStateInitialImpl) then) =
      __$$RestaurantStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestaurantStateInitialImplCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$RestaurantStateInitialImpl>
    implements _$$RestaurantStateInitialImplCopyWith<$Res> {
  __$$RestaurantStateInitialImplCopyWithImpl(
      _$RestaurantStateInitialImpl _value,
      $Res Function(_$RestaurantStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestaurantStateInitialImpl
    with DiagnosticableTreeMixin
    implements RestaurantStateInitial {
  const _$RestaurantStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RestaurantState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RestaurantModel> restaurants) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RestaurantModel> restaurants)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RestaurantModel> restaurants)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestaurantStateInitial value) initial,
    required TResult Function(RestaurantStateLoading value) loading,
    required TResult Function(RestaurantStateLoaded value) loaded,
    required TResult Function(RestaurantStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestaurantStateInitial value)? initial,
    TResult? Function(RestaurantStateLoading value)? loading,
    TResult? Function(RestaurantStateLoaded value)? loaded,
    TResult? Function(RestaurantStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestaurantStateInitial value)? initial,
    TResult Function(RestaurantStateLoading value)? loading,
    TResult Function(RestaurantStateLoaded value)? loaded,
    TResult Function(RestaurantStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RestaurantStateInitial implements RestaurantState {
  const factory RestaurantStateInitial() = _$RestaurantStateInitialImpl;
}

/// @nodoc
abstract class _$$RestaurantStateLoadingImplCopyWith<$Res> {
  factory _$$RestaurantStateLoadingImplCopyWith(
          _$RestaurantStateLoadingImpl value,
          $Res Function(_$RestaurantStateLoadingImpl) then) =
      __$$RestaurantStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestaurantStateLoadingImplCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$RestaurantStateLoadingImpl>
    implements _$$RestaurantStateLoadingImplCopyWith<$Res> {
  __$$RestaurantStateLoadingImplCopyWithImpl(
      _$RestaurantStateLoadingImpl _value,
      $Res Function(_$RestaurantStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestaurantStateLoadingImpl
    with DiagnosticableTreeMixin
    implements RestaurantStateLoading {
  const _$RestaurantStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RestaurantState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RestaurantModel> restaurants) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RestaurantModel> restaurants)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RestaurantModel> restaurants)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(RestaurantStateInitial value) initial,
    required TResult Function(RestaurantStateLoading value) loading,
    required TResult Function(RestaurantStateLoaded value) loaded,
    required TResult Function(RestaurantStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestaurantStateInitial value)? initial,
    TResult? Function(RestaurantStateLoading value)? loading,
    TResult? Function(RestaurantStateLoaded value)? loaded,
    TResult? Function(RestaurantStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestaurantStateInitial value)? initial,
    TResult Function(RestaurantStateLoading value)? loading,
    TResult Function(RestaurantStateLoaded value)? loaded,
    TResult Function(RestaurantStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RestaurantStateLoading implements RestaurantState {
  const factory RestaurantStateLoading() = _$RestaurantStateLoadingImpl;
}

/// @nodoc
abstract class _$$RestaurantStateLoadedImplCopyWith<$Res> {
  factory _$$RestaurantStateLoadedImplCopyWith(
          _$RestaurantStateLoadedImpl value,
          $Res Function(_$RestaurantStateLoadedImpl) then) =
      __$$RestaurantStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RestaurantModel> restaurants});
}

/// @nodoc
class __$$RestaurantStateLoadedImplCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$RestaurantStateLoadedImpl>
    implements _$$RestaurantStateLoadedImplCopyWith<$Res> {
  __$$RestaurantStateLoadedImplCopyWithImpl(_$RestaurantStateLoadedImpl _value,
      $Res Function(_$RestaurantStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurants = null,
  }) {
    return _then(_$RestaurantStateLoadedImpl(
      restaurants: null == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantModel>,
    ));
  }
}

/// @nodoc

class _$RestaurantStateLoadedImpl
    with DiagnosticableTreeMixin
    implements RestaurantStateLoaded {
  const _$RestaurantStateLoadedImpl(
      {required final List<RestaurantModel> restaurants})
      : _restaurants = restaurants;

  final List<RestaurantModel> _restaurants;
  @override
  List<RestaurantModel> get restaurants {
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.loaded(restaurants: $restaurants)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantState.loaded'))
      ..add(DiagnosticsProperty('restaurants', restaurants));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantStateLoadedImplCopyWith<_$RestaurantStateLoadedImpl>
      get copyWith => __$$RestaurantStateLoadedImplCopyWithImpl<
          _$RestaurantStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RestaurantModel> restaurants) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RestaurantModel> restaurants)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RestaurantModel> restaurants)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestaurantStateInitial value) initial,
    required TResult Function(RestaurantStateLoading value) loading,
    required TResult Function(RestaurantStateLoaded value) loaded,
    required TResult Function(RestaurantStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestaurantStateInitial value)? initial,
    TResult? Function(RestaurantStateLoading value)? loading,
    TResult? Function(RestaurantStateLoaded value)? loaded,
    TResult? Function(RestaurantStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestaurantStateInitial value)? initial,
    TResult Function(RestaurantStateLoading value)? loading,
    TResult Function(RestaurantStateLoaded value)? loaded,
    TResult Function(RestaurantStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RestaurantStateLoaded implements RestaurantState {
  const factory RestaurantStateLoaded(
          {required final List<RestaurantModel> restaurants}) =
      _$RestaurantStateLoadedImpl;

  List<RestaurantModel> get restaurants;
  @JsonKey(ignore: true)
  _$$RestaurantStateLoadedImplCopyWith<_$RestaurantStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestaurantStateErrorImplCopyWith<$Res> {
  factory _$$RestaurantStateErrorImplCopyWith(_$RestaurantStateErrorImpl value,
          $Res Function(_$RestaurantStateErrorImpl) then) =
      __$$RestaurantStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RestaurantStateErrorImplCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$RestaurantStateErrorImpl>
    implements _$$RestaurantStateErrorImplCopyWith<$Res> {
  __$$RestaurantStateErrorImplCopyWithImpl(_$RestaurantStateErrorImpl _value,
      $Res Function(_$RestaurantStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RestaurantStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestaurantStateErrorImpl
    with DiagnosticableTreeMixin
    implements RestaurantStateError {
  const _$RestaurantStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantStateErrorImplCopyWith<_$RestaurantStateErrorImpl>
      get copyWith =>
          __$$RestaurantStateErrorImplCopyWithImpl<_$RestaurantStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RestaurantModel> restaurants) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RestaurantModel> restaurants)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RestaurantModel> restaurants)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RestaurantStateInitial value) initial,
    required TResult Function(RestaurantStateLoading value) loading,
    required TResult Function(RestaurantStateLoaded value) loaded,
    required TResult Function(RestaurantStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RestaurantStateInitial value)? initial,
    TResult? Function(RestaurantStateLoading value)? loading,
    TResult? Function(RestaurantStateLoaded value)? loaded,
    TResult? Function(RestaurantStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RestaurantStateInitial value)? initial,
    TResult Function(RestaurantStateLoading value)? loading,
    TResult Function(RestaurantStateLoaded value)? loaded,
    TResult Function(RestaurantStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RestaurantStateError implements RestaurantState {
  const factory RestaurantStateError(final String message) =
      _$RestaurantStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RestaurantStateErrorImplCopyWith<_$RestaurantStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
