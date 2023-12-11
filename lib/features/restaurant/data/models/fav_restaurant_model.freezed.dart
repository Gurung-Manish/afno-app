// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavRestaurantModel _$FavRestaurantModelFromJson(Map<String, dynamic> json) {
  return _FavRestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$FavRestaurantModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fav')
  bool? get fav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavRestaurantModelCopyWith<FavRestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavRestaurantModelCopyWith<$Res> {
  factory $FavRestaurantModelCopyWith(
          FavRestaurantModel value, $Res Function(FavRestaurantModel) then) =
      _$FavRestaurantModelCopyWithImpl<$Res, FavRestaurantModel>;
  @useResult
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'fav') bool? fav});
}

/// @nodoc
class _$FavRestaurantModelCopyWithImpl<$Res, $Val extends FavRestaurantModel>
    implements $FavRestaurantModelCopyWith<$Res> {
  _$FavRestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fav = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fav: freezed == fav
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavRestaurantModelImplCopyWith<$Res>
    implements $FavRestaurantModelCopyWith<$Res> {
  factory _$$FavRestaurantModelImplCopyWith(_$FavRestaurantModelImpl value,
          $Res Function(_$FavRestaurantModelImpl) then) =
      __$$FavRestaurantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'fav') bool? fav});
}

/// @nodoc
class __$$FavRestaurantModelImplCopyWithImpl<$Res>
    extends _$FavRestaurantModelCopyWithImpl<$Res, _$FavRestaurantModelImpl>
    implements _$$FavRestaurantModelImplCopyWith<$Res> {
  __$$FavRestaurantModelImplCopyWithImpl(_$FavRestaurantModelImpl _value,
      $Res Function(_$FavRestaurantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fav = freezed,
  }) {
    return _then(_$FavRestaurantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fav: freezed == fav
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavRestaurantModelImpl implements _FavRestaurantModel {
  const _$FavRestaurantModelImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'fav') this.fav});

  factory _$FavRestaurantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavRestaurantModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'fav')
  final bool? fav;

  @override
  String toString() {
    return 'FavRestaurantModel(id: $id, fav: $fav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavRestaurantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fav, fav) || other.fav == fav));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fav);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavRestaurantModelImplCopyWith<_$FavRestaurantModelImpl> get copyWith =>
      __$$FavRestaurantModelImplCopyWithImpl<_$FavRestaurantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavRestaurantModelImplToJson(
      this,
    );
  }
}

abstract class _FavRestaurantModel implements FavRestaurantModel {
  const factory _FavRestaurantModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'fav') final bool? fav}) = _$FavRestaurantModelImpl;

  factory _FavRestaurantModel.fromJson(Map<String, dynamic> json) =
      _$FavRestaurantModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'fav')
  bool? get fav;
  @override
  @JsonKey(ignore: true)
  _$$FavRestaurantModelImplCopyWith<_$FavRestaurantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
