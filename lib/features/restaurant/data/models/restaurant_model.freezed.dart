// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_title')
  String? get subTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'enabled')
  String? get enabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternate_phone_number')
  String? get alternatePhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram')
  String? get instagram => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook')
  String? get facebook => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube')
  String? get youtube => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'monday_open_time')
  String? get mondayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'monday_close_time')
  String? get mondayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'tuesday_open_time')
  String? get tuesdayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'tuesday_close_time')
  String? get tuesdayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'wednesday_open_time')
  String? get wednesdayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'wednesday_close_time')
  String? get wednesdayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'thursday_open_time')
  String? get thursdayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'thursday_close_time')
  String? get thursdayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'friday_open_time')
  String? get fridayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'friday_close_time')
  String? get fridayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'saturday_open_time')
  String? get saturdayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'saturday_close_time')
  String? get saturdayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunday_open_time')
  String? get sundayOpenTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunday_close_time')
  String? get sundayCloseTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource_url')
  String? get resourceUrl => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'sub_title') String? subTitle,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'enabled') String? enabled,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'alternate_phone_number') String? alternatePhoneNumber,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'instagram') String? instagram,
      @JsonKey(name: 'facebook') String? facebook,
      @JsonKey(name: 'youtube') String? youtube,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'monday_open_time') String? mondayOpenTime,
      @JsonKey(name: 'monday_close_time') String? mondayCloseTime,
      @JsonKey(name: 'tuesday_open_time') String? tuesdayOpenTime,
      @JsonKey(name: 'tuesday_close_time') String? tuesdayCloseTime,
      @JsonKey(name: 'wednesday_open_time') String? wednesdayOpenTime,
      @JsonKey(name: 'wednesday_close_time') String? wednesdayCloseTime,
      @JsonKey(name: 'thursday_open_time') String? thursdayOpenTime,
      @JsonKey(name: 'thursday_close_time') String? thursdayCloseTime,
      @JsonKey(name: 'friday_open_time') String? fridayOpenTime,
      @JsonKey(name: 'friday_close_time') String? fridayCloseTime,
      @JsonKey(name: 'saturday_open_time') String? saturdayOpenTime,
      @JsonKey(name: 'saturday_close_time') String? saturdayCloseTime,
      @JsonKey(name: 'sunday_open_time') String? sundayOpenTime,
      @JsonKey(name: 'sunday_close_time') String? sundayCloseTime,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'resource_url') String? resourceUrl,
      List<Media>? media});
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
    Object? enabled = freezed,
    Object? phoneNumber = freezed,
    Object? alternatePhoneNumber = freezed,
    Object? link = freezed,
    Object? email = freezed,
    Object? instagram = freezed,
    Object? facebook = freezed,
    Object? youtube = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mondayOpenTime = freezed,
    Object? mondayCloseTime = freezed,
    Object? tuesdayOpenTime = freezed,
    Object? tuesdayCloseTime = freezed,
    Object? wednesdayOpenTime = freezed,
    Object? wednesdayCloseTime = freezed,
    Object? thursdayOpenTime = freezed,
    Object? thursdayCloseTime = freezed,
    Object? fridayOpenTime = freezed,
    Object? fridayCloseTime = freezed,
    Object? saturdayOpenTime = freezed,
    Object? saturdayCloseTime = freezed,
    Object? sundayOpenTime = freezed,
    Object? sundayCloseTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? resourceUrl = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      alternatePhoneNumber: freezed == alternatePhoneNumber
          ? _value.alternatePhoneNumber
          : alternatePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      mondayOpenTime: freezed == mondayOpenTime
          ? _value.mondayOpenTime
          : mondayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      mondayCloseTime: freezed == mondayCloseTime
          ? _value.mondayCloseTime
          : mondayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tuesdayOpenTime: freezed == tuesdayOpenTime
          ? _value.tuesdayOpenTime
          : tuesdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tuesdayCloseTime: freezed == tuesdayCloseTime
          ? _value.tuesdayCloseTime
          : tuesdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      wednesdayOpenTime: freezed == wednesdayOpenTime
          ? _value.wednesdayOpenTime
          : wednesdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      wednesdayCloseTime: freezed == wednesdayCloseTime
          ? _value.wednesdayCloseTime
          : wednesdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      thursdayOpenTime: freezed == thursdayOpenTime
          ? _value.thursdayOpenTime
          : thursdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      thursdayCloseTime: freezed == thursdayCloseTime
          ? _value.thursdayCloseTime
          : thursdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fridayOpenTime: freezed == fridayOpenTime
          ? _value.fridayOpenTime
          : fridayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fridayCloseTime: freezed == fridayCloseTime
          ? _value.fridayCloseTime
          : fridayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      saturdayOpenTime: freezed == saturdayOpenTime
          ? _value.saturdayOpenTime
          : saturdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      saturdayCloseTime: freezed == saturdayCloseTime
          ? _value.saturdayCloseTime
          : saturdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sundayOpenTime: freezed == sundayOpenTime
          ? _value.sundayOpenTime
          : sundayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sundayCloseTime: freezed == sundayCloseTime
          ? _value.sundayCloseTime
          : sundayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceUrl: freezed == resourceUrl
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$_RestaurantCopyWith(
          _$_Restaurant value, $Res Function(_$_Restaurant) then) =
      __$$_RestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'sub_title') String? subTitle,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'enabled') String? enabled,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'alternate_phone_number') String? alternatePhoneNumber,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'instagram') String? instagram,
      @JsonKey(name: 'facebook') String? facebook,
      @JsonKey(name: 'youtube') String? youtube,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'monday_open_time') String? mondayOpenTime,
      @JsonKey(name: 'monday_close_time') String? mondayCloseTime,
      @JsonKey(name: 'tuesday_open_time') String? tuesdayOpenTime,
      @JsonKey(name: 'tuesday_close_time') String? tuesdayCloseTime,
      @JsonKey(name: 'wednesday_open_time') String? wednesdayOpenTime,
      @JsonKey(name: 'wednesday_close_time') String? wednesdayCloseTime,
      @JsonKey(name: 'thursday_open_time') String? thursdayOpenTime,
      @JsonKey(name: 'thursday_close_time') String? thursdayCloseTime,
      @JsonKey(name: 'friday_open_time') String? fridayOpenTime,
      @JsonKey(name: 'friday_close_time') String? fridayCloseTime,
      @JsonKey(name: 'saturday_open_time') String? saturdayOpenTime,
      @JsonKey(name: 'saturday_close_time') String? saturdayCloseTime,
      @JsonKey(name: 'sunday_open_time') String? sundayOpenTime,
      @JsonKey(name: 'sunday_close_time') String? sundayCloseTime,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'resource_url') String? resourceUrl,
      List<Media>? media});
}

/// @nodoc
class __$$_RestaurantCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$_Restaurant>
    implements _$$_RestaurantCopyWith<$Res> {
  __$$_RestaurantCopyWithImpl(
      _$_Restaurant _value, $Res Function(_$_Restaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? description = freezed,
    Object? enabled = freezed,
    Object? phoneNumber = freezed,
    Object? alternatePhoneNumber = freezed,
    Object? link = freezed,
    Object? email = freezed,
    Object? instagram = freezed,
    Object? facebook = freezed,
    Object? youtube = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mondayOpenTime = freezed,
    Object? mondayCloseTime = freezed,
    Object? tuesdayOpenTime = freezed,
    Object? tuesdayCloseTime = freezed,
    Object? wednesdayOpenTime = freezed,
    Object? wednesdayCloseTime = freezed,
    Object? thursdayOpenTime = freezed,
    Object? thursdayCloseTime = freezed,
    Object? fridayOpenTime = freezed,
    Object? fridayCloseTime = freezed,
    Object? saturdayOpenTime = freezed,
    Object? saturdayCloseTime = freezed,
    Object? sundayOpenTime = freezed,
    Object? sundayCloseTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? resourceUrl = freezed,
    Object? media = freezed,
  }) {
    return _then(_$_Restaurant(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      alternatePhoneNumber: freezed == alternatePhoneNumber
          ? _value.alternatePhoneNumber
          : alternatePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      mondayOpenTime: freezed == mondayOpenTime
          ? _value.mondayOpenTime
          : mondayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      mondayCloseTime: freezed == mondayCloseTime
          ? _value.mondayCloseTime
          : mondayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tuesdayOpenTime: freezed == tuesdayOpenTime
          ? _value.tuesdayOpenTime
          : tuesdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tuesdayCloseTime: freezed == tuesdayCloseTime
          ? _value.tuesdayCloseTime
          : tuesdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      wednesdayOpenTime: freezed == wednesdayOpenTime
          ? _value.wednesdayOpenTime
          : wednesdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      wednesdayCloseTime: freezed == wednesdayCloseTime
          ? _value.wednesdayCloseTime
          : wednesdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      thursdayOpenTime: freezed == thursdayOpenTime
          ? _value.thursdayOpenTime
          : thursdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      thursdayCloseTime: freezed == thursdayCloseTime
          ? _value.thursdayCloseTime
          : thursdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fridayOpenTime: freezed == fridayOpenTime
          ? _value.fridayOpenTime
          : fridayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fridayCloseTime: freezed == fridayCloseTime
          ? _value.fridayCloseTime
          : fridayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      saturdayOpenTime: freezed == saturdayOpenTime
          ? _value.saturdayOpenTime
          : saturdayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      saturdayCloseTime: freezed == saturdayCloseTime
          ? _value.saturdayCloseTime
          : saturdayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sundayOpenTime: freezed == sundayOpenTime
          ? _value.sundayOpenTime
          : sundayOpenTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sundayCloseTime: freezed == sundayCloseTime
          ? _value.sundayCloseTime
          : sundayCloseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceUrl: freezed == resourceUrl
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant implements _Restaurant {
  const _$_Restaurant(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'sub_title') this.subTitle,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'enabled') this.enabled,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'alternate_phone_number') this.alternatePhoneNumber,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'instagram') this.instagram,
      @JsonKey(name: 'facebook') this.facebook,
      @JsonKey(name: 'youtube') this.youtube,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'monday_open_time') this.mondayOpenTime,
      @JsonKey(name: 'monday_close_time') this.mondayCloseTime,
      @JsonKey(name: 'tuesday_open_time') this.tuesdayOpenTime,
      @JsonKey(name: 'tuesday_close_time') this.tuesdayCloseTime,
      @JsonKey(name: 'wednesday_open_time') this.wednesdayOpenTime,
      @JsonKey(name: 'wednesday_close_time') this.wednesdayCloseTime,
      @JsonKey(name: 'thursday_open_time') this.thursdayOpenTime,
      @JsonKey(name: 'thursday_close_time') this.thursdayCloseTime,
      @JsonKey(name: 'friday_open_time') this.fridayOpenTime,
      @JsonKey(name: 'friday_close_time') this.fridayCloseTime,
      @JsonKey(name: 'saturday_open_time') this.saturdayOpenTime,
      @JsonKey(name: 'saturday_close_time') this.saturdayCloseTime,
      @JsonKey(name: 'sunday_open_time') this.sundayOpenTime,
      @JsonKey(name: 'sunday_close_time') this.sundayCloseTime,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'resource_url') this.resourceUrl,
      final List<Media>? media})
      : _media = media;

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'sub_title')
  final String? subTitle;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'enabled')
  final String? enabled;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'alternate_phone_number')
  final String? alternatePhoneNumber;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'instagram')
  final String? instagram;
  @override
  @JsonKey(name: 'facebook')
  final String? facebook;
  @override
  @JsonKey(name: 'youtube')
  final String? youtube;
  @override
  @JsonKey(name: 'latitude')
  final String? latitude;
  @override
  @JsonKey(name: 'longitude')
  final String? longitude;
  @override
  @JsonKey(name: 'monday_open_time')
  final String? mondayOpenTime;
  @override
  @JsonKey(name: 'monday_close_time')
  final String? mondayCloseTime;
  @override
  @JsonKey(name: 'tuesday_open_time')
  final String? tuesdayOpenTime;
  @override
  @JsonKey(name: 'tuesday_close_time')
  final String? tuesdayCloseTime;
  @override
  @JsonKey(name: 'wednesday_open_time')
  final String? wednesdayOpenTime;
  @override
  @JsonKey(name: 'wednesday_close_time')
  final String? wednesdayCloseTime;
  @override
  @JsonKey(name: 'thursday_open_time')
  final String? thursdayOpenTime;
  @override
  @JsonKey(name: 'thursday_close_time')
  final String? thursdayCloseTime;
  @override
  @JsonKey(name: 'friday_open_time')
  final String? fridayOpenTime;
  @override
  @JsonKey(name: 'friday_close_time')
  final String? fridayCloseTime;
  @override
  @JsonKey(name: 'saturday_open_time')
  final String? saturdayOpenTime;
  @override
  @JsonKey(name: 'saturday_close_time')
  final String? saturdayCloseTime;
  @override
  @JsonKey(name: 'sunday_open_time')
  final String? sundayOpenTime;
  @override
  @JsonKey(name: 'sunday_close_time')
  final String? sundayCloseTime;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'resource_url')
  final String? resourceUrl;
  final List<Media>? _media;
  @override
  List<Media>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantModel(id: $id, title: $title, subTitle: $subTitle, description: $description, enabled: $enabled, phoneNumber: $phoneNumber, alternatePhoneNumber: $alternatePhoneNumber, link: $link, email: $email, instagram: $instagram, facebook: $facebook, youtube: $youtube, latitude: $latitude, longitude: $longitude, mondayOpenTime: $mondayOpenTime, mondayCloseTime: $mondayCloseTime, tuesdayOpenTime: $tuesdayOpenTime, tuesdayCloseTime: $tuesdayCloseTime, wednesdayOpenTime: $wednesdayOpenTime, wednesdayCloseTime: $wednesdayCloseTime, thursdayOpenTime: $thursdayOpenTime, thursdayCloseTime: $thursdayCloseTime, fridayOpenTime: $fridayOpenTime, fridayCloseTime: $fridayCloseTime, saturdayOpenTime: $saturdayOpenTime, saturdayCloseTime: $saturdayCloseTime, sundayOpenTime: $sundayOpenTime, sundayCloseTime: $sundayCloseTime, createdAt: $createdAt, updatedAt: $updatedAt, resourceUrl: $resourceUrl, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.alternatePhoneNumber, alternatePhoneNumber) ||
                other.alternatePhoneNumber == alternatePhoneNumber) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.youtube, youtube) || other.youtube == youtube) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mondayOpenTime, mondayOpenTime) ||
                other.mondayOpenTime == mondayOpenTime) &&
            (identical(other.mondayCloseTime, mondayCloseTime) ||
                other.mondayCloseTime == mondayCloseTime) &&
            (identical(other.tuesdayOpenTime, tuesdayOpenTime) ||
                other.tuesdayOpenTime == tuesdayOpenTime) &&
            (identical(other.tuesdayCloseTime, tuesdayCloseTime) ||
                other.tuesdayCloseTime == tuesdayCloseTime) &&
            (identical(other.wednesdayOpenTime, wednesdayOpenTime) ||
                other.wednesdayOpenTime == wednesdayOpenTime) &&
            (identical(other.wednesdayCloseTime, wednesdayCloseTime) ||
                other.wednesdayCloseTime == wednesdayCloseTime) &&
            (identical(other.thursdayOpenTime, thursdayOpenTime) ||
                other.thursdayOpenTime == thursdayOpenTime) &&
            (identical(other.thursdayCloseTime, thursdayCloseTime) ||
                other.thursdayCloseTime == thursdayCloseTime) &&
            (identical(other.fridayOpenTime, fridayOpenTime) ||
                other.fridayOpenTime == fridayOpenTime) &&
            (identical(other.fridayCloseTime, fridayCloseTime) ||
                other.fridayCloseTime == fridayCloseTime) &&
            (identical(other.saturdayOpenTime, saturdayOpenTime) ||
                other.saturdayOpenTime == saturdayOpenTime) &&
            (identical(other.saturdayCloseTime, saturdayCloseTime) ||
                other.saturdayCloseTime == saturdayCloseTime) &&
            (identical(other.sundayOpenTime, sundayOpenTime) ||
                other.sundayOpenTime == sundayOpenTime) &&
            (identical(other.sundayCloseTime, sundayCloseTime) ||
                other.sundayCloseTime == sundayCloseTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.resourceUrl, resourceUrl) ||
                other.resourceUrl == resourceUrl) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        subTitle,
        description,
        enabled,
        phoneNumber,
        alternatePhoneNumber,
        link,
        email,
        instagram,
        facebook,
        youtube,
        latitude,
        longitude,
        mondayOpenTime,
        mondayCloseTime,
        tuesdayOpenTime,
        tuesdayCloseTime,
        wednesdayOpenTime,
        wednesdayCloseTime,
        thursdayOpenTime,
        thursdayCloseTime,
        fridayOpenTime,
        fridayCloseTime,
        saturdayOpenTime,
        saturdayCloseTime,
        sundayOpenTime,
        sundayCloseTime,
        createdAt,
        updatedAt,
        resourceUrl,
        const DeepCollectionEquality().hash(_media)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      __$$_RestaurantCopyWithImpl<_$_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(
      this,
    );
  }
}

abstract class _Restaurant implements RestaurantModel {
  const factory _Restaurant(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'sub_title') final String? subTitle,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'enabled') final String? enabled,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'alternate_phone_number')
      final String? alternatePhoneNumber,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'instagram') final String? instagram,
      @JsonKey(name: 'facebook') final String? facebook,
      @JsonKey(name: 'youtube') final String? youtube,
      @JsonKey(name: 'latitude') final String? latitude,
      @JsonKey(name: 'longitude') final String? longitude,
      @JsonKey(name: 'monday_open_time') final String? mondayOpenTime,
      @JsonKey(name: 'monday_close_time') final String? mondayCloseTime,
      @JsonKey(name: 'tuesday_open_time') final String? tuesdayOpenTime,
      @JsonKey(name: 'tuesday_close_time') final String? tuesdayCloseTime,
      @JsonKey(name: 'wednesday_open_time') final String? wednesdayOpenTime,
      @JsonKey(name: 'wednesday_close_time') final String? wednesdayCloseTime,
      @JsonKey(name: 'thursday_open_time') final String? thursdayOpenTime,
      @JsonKey(name: 'thursday_close_time') final String? thursdayCloseTime,
      @JsonKey(name: 'friday_open_time') final String? fridayOpenTime,
      @JsonKey(name: 'friday_close_time') final String? fridayCloseTime,
      @JsonKey(name: 'saturday_open_time') final String? saturdayOpenTime,
      @JsonKey(name: 'saturday_close_time') final String? saturdayCloseTime,
      @JsonKey(name: 'sunday_open_time') final String? sundayOpenTime,
      @JsonKey(name: 'sunday_close_time') final String? sundayCloseTime,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'resource_url') final String? resourceUrl,
      final List<Media>? media}) = _$_Restaurant;

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'sub_title')
  String? get subTitle;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'enabled')
  String? get enabled;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'alternate_phone_number')
  String? get alternatePhoneNumber;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'instagram')
  String? get instagram;
  @override
  @JsonKey(name: 'facebook')
  String? get facebook;
  @override
  @JsonKey(name: 'youtube')
  String? get youtube;
  @override
  @JsonKey(name: 'latitude')
  String? get latitude;
  @override
  @JsonKey(name: 'longitude')
  String? get longitude;
  @override
  @JsonKey(name: 'monday_open_time')
  String? get mondayOpenTime;
  @override
  @JsonKey(name: 'monday_close_time')
  String? get mondayCloseTime;
  @override
  @JsonKey(name: 'tuesday_open_time')
  String? get tuesdayOpenTime;
  @override
  @JsonKey(name: 'tuesday_close_time')
  String? get tuesdayCloseTime;
  @override
  @JsonKey(name: 'wednesday_open_time')
  String? get wednesdayOpenTime;
  @override
  @JsonKey(name: 'wednesday_close_time')
  String? get wednesdayCloseTime;
  @override
  @JsonKey(name: 'thursday_open_time')
  String? get thursdayOpenTime;
  @override
  @JsonKey(name: 'thursday_close_time')
  String? get thursdayCloseTime;
  @override
  @JsonKey(name: 'friday_open_time')
  String? get fridayOpenTime;
  @override
  @JsonKey(name: 'friday_close_time')
  String? get fridayCloseTime;
  @override
  @JsonKey(name: 'saturday_open_time')
  String? get saturdayOpenTime;
  @override
  @JsonKey(name: 'saturday_close_time')
  String? get saturdayCloseTime;
  @override
  @JsonKey(name: 'sunday_open_time')
  String? get sundayOpenTime;
  @override
  @JsonKey(name: 'sunday_close_time')
  String? get sundayCloseTime;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'resource_url')
  String? get resourceUrl;
  @override
  List<Media>? get media;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantCopyWith<_$_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_type')
  String? get modelType => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  String? get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection_name')
  String? get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'disk')
  String? get disk => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_properties')
  MediaCustomProperties? get customProperties =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'manipulations')
  List<dynamic>? get manipulations => throw _privateConstructorUsedError;
  @JsonKey(name: 'responsive_images')
  List<dynamic>? get responsiveImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_column')
  String? get orderColumn => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'model_type') String? modelType,
      @JsonKey(name: 'model_id') String? modelId,
      @JsonKey(name: 'collection_name') String? collectionName,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'disk') String? disk,
      @JsonKey(name: 'size') String? size,
      @JsonKey(name: 'custom_properties')
      MediaCustomProperties? customProperties,
      @JsonKey(name: 'manipulations') List<dynamic>? manipulations,
      @JsonKey(name: 'responsive_images') List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') String? orderColumn,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $MediaCustomPropertiesCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? modelType = freezed,
    Object? modelId = freezed,
    Object? collectionName = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? disk = freezed,
    Object? size = freezed,
    Object? customProperties = freezed,
    Object? manipulations = freezed,
    Object? responsiveImages = freezed,
    Object? orderColumn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      modelType: freezed == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      disk: freezed == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as MediaCustomProperties?,
      manipulations: freezed == manipulations
          ? _value.manipulations
          : manipulations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      responsiveImages: freezed == responsiveImages
          ? _value.responsiveImages
          : responsiveImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      orderColumn: freezed == orderColumn
          ? _value.orderColumn
          : orderColumn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaCustomPropertiesCopyWith<$Res>? get customProperties {
    if (_value.customProperties == null) {
      return null;
    }

    return $MediaCustomPropertiesCopyWith<$Res>(_value.customProperties!,
        (value) {
      return _then(_value.copyWith(customProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'model_type') String? modelType,
      @JsonKey(name: 'model_id') String? modelId,
      @JsonKey(name: 'collection_name') String? collectionName,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'disk') String? disk,
      @JsonKey(name: 'size') String? size,
      @JsonKey(name: 'custom_properties')
      MediaCustomProperties? customProperties,
      @JsonKey(name: 'manipulations') List<dynamic>? manipulations,
      @JsonKey(name: 'responsive_images') List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') String? orderColumn,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $MediaCustomPropertiesCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? modelType = freezed,
    Object? modelId = freezed,
    Object? collectionName = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? disk = freezed,
    Object? size = freezed,
    Object? customProperties = freezed,
    Object? manipulations = freezed,
    Object? responsiveImages = freezed,
    Object? orderColumn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Media(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      modelType: freezed == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      disk: freezed == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as MediaCustomProperties?,
      manipulations: freezed == manipulations
          ? _value._manipulations
          : manipulations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      responsiveImages: freezed == responsiveImages
          ? _value._responsiveImages
          : responsiveImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      orderColumn: freezed == orderColumn
          ? _value.orderColumn
          : orderColumn // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'model_type') this.modelType,
      @JsonKey(name: 'model_id') this.modelId,
      @JsonKey(name: 'collection_name') this.collectionName,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'mime_type') this.mimeType,
      @JsonKey(name: 'disk') this.disk,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'custom_properties') this.customProperties,
      @JsonKey(name: 'manipulations') final List<dynamic>? manipulations,
      @JsonKey(name: 'responsive_images') final List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') this.orderColumn,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _manipulations = manipulations,
        _responsiveImages = responsiveImages;

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'model_type')
  final String? modelType;
  @override
  @JsonKey(name: 'model_id')
  final String? modelId;
  @override
  @JsonKey(name: 'collection_name')
  final String? collectionName;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  @JsonKey(name: 'disk')
  final String? disk;
  @override
  @JsonKey(name: 'size')
  final String? size;
  @override
  @JsonKey(name: 'custom_properties')
  final MediaCustomProperties? customProperties;
  final List<dynamic>? _manipulations;
  @override
  @JsonKey(name: 'manipulations')
  List<dynamic>? get manipulations {
    final value = _manipulations;
    if (value == null) return null;
    if (_manipulations is EqualUnmodifiableListView) return _manipulations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _responsiveImages;
  @override
  @JsonKey(name: 'responsive_images')
  List<dynamic>? get responsiveImages {
    final value = _responsiveImages;
    if (value == null) return null;
    if (_responsiveImages is EqualUnmodifiableListView)
      return _responsiveImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'order_column')
  final String? orderColumn;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Media(id: $id, modelType: $modelType, modelId: $modelId, collectionName: $collectionName, name: $name, fileName: $fileName, mimeType: $mimeType, disk: $disk, size: $size, customProperties: $customProperties, manipulations: $manipulations, responsiveImages: $responsiveImages, orderColumn: $orderColumn, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.modelType, modelType) ||
                other.modelType == modelType) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.disk, disk) || other.disk == disk) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties) &&
            const DeepCollectionEquality()
                .equals(other._manipulations, _manipulations) &&
            const DeepCollectionEquality()
                .equals(other._responsiveImages, _responsiveImages) &&
            (identical(other.orderColumn, orderColumn) ||
                other.orderColumn == orderColumn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      modelType,
      modelId,
      collectionName,
      name,
      fileName,
      mimeType,
      disk,
      size,
      customProperties,
      const DeepCollectionEquality().hash(_manipulations),
      const DeepCollectionEquality().hash(_responsiveImages),
      orderColumn,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'model_type') final String? modelType,
      @JsonKey(name: 'model_id') final String? modelId,
      @JsonKey(name: 'collection_name') final String? collectionName,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'file_name') final String? fileName,
      @JsonKey(name: 'mime_type') final String? mimeType,
      @JsonKey(name: 'disk') final String? disk,
      @JsonKey(name: 'size') final String? size,
      @JsonKey(name: 'custom_properties')
      final MediaCustomProperties? customProperties,
      @JsonKey(name: 'manipulations') final List<dynamic>? manipulations,
      @JsonKey(name: 'responsive_images') final List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') final String? orderColumn,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'model_type')
  String? get modelType;
  @override
  @JsonKey(name: 'model_id')
  String? get modelId;
  @override
  @JsonKey(name: 'collection_name')
  String? get collectionName;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'file_name')
  String? get fileName;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(name: 'disk')
  String? get disk;
  @override
  @JsonKey(name: 'size')
  String? get size;
  @override
  @JsonKey(name: 'custom_properties')
  MediaCustomProperties? get customProperties;
  @override
  @JsonKey(name: 'manipulations')
  List<dynamic>? get manipulations;
  @override
  @JsonKey(name: 'responsive_images')
  List<dynamic>? get responsiveImages;
  @override
  @JsonKey(name: 'order_column')
  String? get orderColumn;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaCustomProperties _$MediaCustomPropertiesFromJson(
    Map<String, dynamic> json) {
  return _MediaCustomProperties.fromJson(json);
}

/// @nodoc
mixin _$MediaCustomProperties {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  String? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  String? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_conversions')
  Map<String, bool>? get generatedConversions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCustomPropertiesCopyWith<MediaCustomProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCustomPropertiesCopyWith<$Res> {
  factory $MediaCustomPropertiesCopyWith(MediaCustomProperties value,
          $Res Function(MediaCustomProperties) then) =
      _$MediaCustomPropertiesCopyWithImpl<$Res, MediaCustomProperties>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'width') String? width,
      @JsonKey(name: 'height') String? height,
      @JsonKey(name: 'generated_conversions')
      Map<String, bool>? generatedConversions});
}

/// @nodoc
class _$MediaCustomPropertiesCopyWithImpl<$Res,
        $Val extends MediaCustomProperties>
    implements $MediaCustomPropertiesCopyWith<$Res> {
  _$MediaCustomPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fileName = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? generatedConversions = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedConversions: freezed == generatedConversions
          ? _value.generatedConversions
          : generatedConversions // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCustomPropertiesCopyWith<$Res>
    implements $MediaCustomPropertiesCopyWith<$Res> {
  factory _$$_MediaCustomPropertiesCopyWith(_$_MediaCustomProperties value,
          $Res Function(_$_MediaCustomProperties) then) =
      __$$_MediaCustomPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'width') String? width,
      @JsonKey(name: 'height') String? height,
      @JsonKey(name: 'generated_conversions')
      Map<String, bool>? generatedConversions});
}

/// @nodoc
class __$$_MediaCustomPropertiesCopyWithImpl<$Res>
    extends _$MediaCustomPropertiesCopyWithImpl<$Res, _$_MediaCustomProperties>
    implements _$$_MediaCustomPropertiesCopyWith<$Res> {
  __$$_MediaCustomPropertiesCopyWithImpl(_$_MediaCustomProperties _value,
      $Res Function(_$_MediaCustomProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fileName = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? generatedConversions = freezed,
  }) {
    return _then(_$_MediaCustomProperties(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedConversions: freezed == generatedConversions
          ? _value._generatedConversions
          : generatedConversions // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaCustomProperties implements _MediaCustomProperties {
  const _$_MediaCustomProperties(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'generated_conversions')
      final Map<String, bool>? generatedConversions})
      : _generatedConversions = generatedConversions;

  factory _$_MediaCustomProperties.fromJson(Map<String, dynamic> json) =>
      _$$_MediaCustomPropertiesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;
  @override
  @JsonKey(name: 'width')
  final String? width;
  @override
  @JsonKey(name: 'height')
  final String? height;
  final Map<String, bool>? _generatedConversions;
  @override
  @JsonKey(name: 'generated_conversions')
  Map<String, bool>? get generatedConversions {
    final value = _generatedConversions;
    if (value == null) return null;
    if (_generatedConversions is EqualUnmodifiableMapView)
      return _generatedConversions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MediaCustomProperties(name: $name, fileName: $fileName, width: $width, height: $height, generatedConversions: $generatedConversions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaCustomProperties &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._generatedConversions, _generatedConversions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fileName, width, height,
      const DeepCollectionEquality().hash(_generatedConversions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCustomPropertiesCopyWith<_$_MediaCustomProperties> get copyWith =>
      __$$_MediaCustomPropertiesCopyWithImpl<_$_MediaCustomProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaCustomPropertiesToJson(
      this,
    );
  }
}

abstract class _MediaCustomProperties implements MediaCustomProperties {
  const factory _MediaCustomProperties(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'file_name') final String? fileName,
          @JsonKey(name: 'width') final String? width,
          @JsonKey(name: 'height') final String? height,
          @JsonKey(name: 'generated_conversions')
          final Map<String, bool>? generatedConversions}) =
      _$_MediaCustomProperties;

  factory _MediaCustomProperties.fromJson(Map<String, dynamic> json) =
      _$_MediaCustomProperties.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'file_name')
  String? get fileName;
  @override
  @JsonKey(name: 'width')
  String? get width;
  @override
  @JsonKey(name: 'height')
  String? get height;
  @override
  @JsonKey(name: 'generated_conversions')
  Map<String, bool>? get generatedConversions;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCustomPropertiesCopyWith<_$_MediaCustomProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
