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
  return _RestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get enabled => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource_url')
  String get resourceUrl => throw _privateConstructorUsedError;

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
      {int id,
      String? title,
      String? description,
      int? enabled,
      double? latitude,
      double? longitude,
      List<Media>? media,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'resource_url') String resourceUrl});
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
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? enabled = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? media = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? resourceUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      resourceUrl: null == resourceUrl
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantModelCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$_RestaurantModelCopyWith(
          _$_RestaurantModel value, $Res Function(_$_RestaurantModel) then) =
      __$$_RestaurantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? enabled,
      double? latitude,
      double? longitude,
      List<Media>? media,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'resource_url') String resourceUrl});
}

/// @nodoc
class __$$_RestaurantModelCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$_RestaurantModel>
    implements _$$_RestaurantModelCopyWith<$Res> {
  __$$_RestaurantModelCopyWithImpl(
      _$_RestaurantModel _value, $Res Function(_$_RestaurantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? enabled = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? media = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? resourceUrl = null,
  }) {
    return _then(_$_RestaurantModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      resourceUrl: null == resourceUrl
          ? _value.resourceUrl
          : resourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantModel implements _RestaurantModel {
  const _$_RestaurantModel(
      {required this.id,
      this.title,
      this.description,
      this.enabled,
      this.latitude,
      this.longitude,
      final List<Media>? media,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'resource_url') required this.resourceUrl})
      : _media = media;

  factory _$_RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantModelFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? enabled;
  @override
  final double? latitude;
  @override
  final double? longitude;
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
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'resource_url')
  final String resourceUrl;

  @override
  String toString() {
    return 'RestaurantModel(id: $id, title: $title, description: $description, enabled: $enabled, latitude: $latitude, longitude: $longitude, media: $media, createdAt: $createdAt, updatedAt: $updatedAt, resourceUrl: $resourceUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.resourceUrl, resourceUrl) ||
                other.resourceUrl == resourceUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      enabled,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_media),
      createdAt,
      updatedAt,
      resourceUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      __$$_RestaurantModelCopyWithImpl<_$_RestaurantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantModelToJson(
      this,
    );
  }
}

abstract class _RestaurantModel implements RestaurantModel {
  const factory _RestaurantModel(
          {required final int id,
          final String? title,
          final String? description,
          final int? enabled,
          final double? latitude,
          final double? longitude,
          final List<Media>? media,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          @JsonKey(name: 'resource_url') required final String resourceUrl}) =
      _$_RestaurantModel;

  factory _RestaurantModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantModel.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get enabled;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  List<Media>? get media;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'resource_url')
  String get resourceUrl;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_type')
  String get modelType => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int get modelId => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection_name')
  String? get collectionName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  String? get disk => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversions_disk')
  String? get conversionsDisk => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customProperties =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get generatedConversions =>
      throw _privateConstructorUsedError;
  List<dynamic>? get responsiveImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_column')
  int? get orderColumn => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_url')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;

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
      {int id,
      @JsonKey(name: 'model_type') String modelType,
      @JsonKey(name: 'model_id') int modelId,
      String uuid,
      @JsonKey(name: 'collection_name') String? collectionName,
      String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      String? disk,
      @JsonKey(name: 'conversions_disk') String? conversionsDisk,
      int? size,
      Map<String, dynamic>? customProperties,
      Map<String, dynamic>? generatedConversions,
      List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') int? orderColumn,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'original_url') String? originalUrl,
      @JsonKey(name: 'preview_url') String? previewUrl});
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
    Object? id = null,
    Object? modelType = null,
    Object? modelId = null,
    Object? uuid = null,
    Object? collectionName = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? disk = freezed,
    Object? conversionsDisk = freezed,
    Object? size = freezed,
    Object? customProperties = freezed,
    Object? generatedConversions = freezed,
    Object? responsiveImages = freezed,
    Object? orderColumn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? originalUrl = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      modelType: null == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
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
      conversionsDisk: freezed == conversionsDisk
          ? _value.conversionsDisk
          : conversionsDisk // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      generatedConversions: freezed == generatedConversions
          ? _value.generatedConversions
          : generatedConversions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      responsiveImages: freezed == responsiveImages
          ? _value.responsiveImages
          : responsiveImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      orderColumn: freezed == orderColumn
          ? _value.orderColumn
          : orderColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'model_type') String modelType,
      @JsonKey(name: 'model_id') int modelId,
      String uuid,
      @JsonKey(name: 'collection_name') String? collectionName,
      String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      String? disk,
      @JsonKey(name: 'conversions_disk') String? conversionsDisk,
      int? size,
      Map<String, dynamic>? customProperties,
      Map<String, dynamic>? generatedConversions,
      List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') int? orderColumn,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'original_url') String? originalUrl,
      @JsonKey(name: 'preview_url') String? previewUrl});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$_Media>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? modelType = null,
    Object? modelId = null,
    Object? uuid = null,
    Object? collectionName = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? disk = freezed,
    Object? conversionsDisk = freezed,
    Object? size = freezed,
    Object? customProperties = freezed,
    Object? generatedConversions = freezed,
    Object? responsiveImages = freezed,
    Object? orderColumn = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? originalUrl = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_$_Media(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      modelType: null == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
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
      conversionsDisk: freezed == conversionsDisk
          ? _value.conversionsDisk
          : conversionsDisk // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      customProperties: freezed == customProperties
          ? _value._customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      generatedConversions: freezed == generatedConversions
          ? _value._generatedConversions
          : generatedConversions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      responsiveImages: freezed == responsiveImages
          ? _value._responsiveImages
          : responsiveImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      orderColumn: freezed == orderColumn
          ? _value.orderColumn
          : orderColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media(
      {required this.id,
      @JsonKey(name: 'model_type') required this.modelType,
      @JsonKey(name: 'model_id') required this.modelId,
      required this.uuid,
      @JsonKey(name: 'collection_name') this.collectionName,
      this.name,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'mime_type') this.mimeType,
      this.disk,
      @JsonKey(name: 'conversions_disk') this.conversionsDisk,
      this.size,
      final Map<String, dynamic>? customProperties,
      final Map<String, dynamic>? generatedConversions,
      final List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') this.orderColumn,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'original_url') this.originalUrl,
      @JsonKey(name: 'preview_url') this.previewUrl})
      : _customProperties = customProperties,
        _generatedConversions = generatedConversions,
        _responsiveImages = responsiveImages;

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'model_type')
  final String modelType;
  @override
  @JsonKey(name: 'model_id')
  final int modelId;
  @override
  final String uuid;
  @override
  @JsonKey(name: 'collection_name')
  final String? collectionName;
  @override
  final String? name;
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  final String? disk;
  @override
  @JsonKey(name: 'conversions_disk')
  final String? conversionsDisk;
  @override
  final int? size;
  final Map<String, dynamic>? _customProperties;
  @override
  Map<String, dynamic>? get customProperties {
    final value = _customProperties;
    if (value == null) return null;
    if (_customProperties is EqualUnmodifiableMapView) return _customProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _generatedConversions;
  @override
  Map<String, dynamic>? get generatedConversions {
    final value = _generatedConversions;
    if (value == null) return null;
    if (_generatedConversions is EqualUnmodifiableMapView)
      return _generatedConversions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<dynamic>? _responsiveImages;
  @override
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
  final int? orderColumn;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'original_url')
  final String? originalUrl;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;

  @override
  String toString() {
    return 'Media(id: $id, modelType: $modelType, modelId: $modelId, uuid: $uuid, collectionName: $collectionName, name: $name, fileName: $fileName, mimeType: $mimeType, disk: $disk, conversionsDisk: $conversionsDisk, size: $size, customProperties: $customProperties, generatedConversions: $generatedConversions, responsiveImages: $responsiveImages, orderColumn: $orderColumn, createdAt: $createdAt, updatedAt: $updatedAt, originalUrl: $originalUrl, previewUrl: $previewUrl)';
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
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.disk, disk) || other.disk == disk) &&
            (identical(other.conversionsDisk, conversionsDisk) ||
                other.conversionsDisk == conversionsDisk) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._customProperties, _customProperties) &&
            const DeepCollectionEquality()
                .equals(other._generatedConversions, _generatedConversions) &&
            const DeepCollectionEquality()
                .equals(other._responsiveImages, _responsiveImages) &&
            (identical(other.orderColumn, orderColumn) ||
                other.orderColumn == orderColumn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        modelType,
        modelId,
        uuid,
        collectionName,
        name,
        fileName,
        mimeType,
        disk,
        conversionsDisk,
        size,
        const DeepCollectionEquality().hash(_customProperties),
        const DeepCollectionEquality().hash(_generatedConversions),
        const DeepCollectionEquality().hash(_responsiveImages),
        orderColumn,
        createdAt,
        updatedAt,
        originalUrl,
        previewUrl
      ]);

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
      {required final int id,
      @JsonKey(name: 'model_type') required final String modelType,
      @JsonKey(name: 'model_id') required final int modelId,
      required final String uuid,
      @JsonKey(name: 'collection_name') final String? collectionName,
      final String? name,
      @JsonKey(name: 'file_name') final String? fileName,
      @JsonKey(name: 'mime_type') final String? mimeType,
      final String? disk,
      @JsonKey(name: 'conversions_disk') final String? conversionsDisk,
      final int? size,
      final Map<String, dynamic>? customProperties,
      final Map<String, dynamic>? generatedConversions,
      final List<dynamic>? responsiveImages,
      @JsonKey(name: 'order_column') final int? orderColumn,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'original_url') final String? originalUrl,
      @JsonKey(name: 'preview_url') final String? previewUrl}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'model_type')
  String get modelType;
  @override
  @JsonKey(name: 'model_id')
  int get modelId;
  @override
  String get uuid;
  @override
  @JsonKey(name: 'collection_name')
  String? get collectionName;
  @override
  String? get name;
  @override
  @JsonKey(name: 'file_name')
  String? get fileName;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  String? get disk;
  @override
  @JsonKey(name: 'conversions_disk')
  String? get conversionsDisk;
  @override
  int? get size;
  @override
  Map<String, dynamic>? get customProperties;
  @override
  Map<String, dynamic>? get generatedConversions;
  @override
  List<dynamic>? get responsiveImages;
  @override
  @JsonKey(name: 'order_column')
  int? get orderColumn;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'original_url')
  String? get originalUrl;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      throw _privateConstructorUsedError;
}
