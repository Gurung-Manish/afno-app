import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable()
class RestaurantModel {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'sub_title')
  final String? subTitle;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'enabled')
  final String? enabled;

  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  @JsonKey(name: 'alternate_phone_number')
  final String? alternatePhoneNumber;

  @JsonKey(name: 'link')
  final String? link;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'instagram')
  final String? instagram;

  @JsonKey(name: 'facebook')
  final String? facebook;

  @JsonKey(name: 'youtube')
  final String? youtube;

  @JsonKey(name: 'latitude')
  final String? latitude;

  @JsonKey(name: 'longitude')
  final String? longitude;

  @JsonKey(name: 'monday_open_time')
  final String? mondayOpenTime;

  @JsonKey(name: 'monday_close_time')
  final String? mondayCloseTime;

  @JsonKey(name: 'tuesday_open_time')
  final String? tuesdayOpenTime;

  @JsonKey(name: 'tuesday_close_time')
  final String? tuesdayCloseTime;

  @JsonKey(name: 'wednesday_open_time')
  final String? wednesdayOpenTime;

  @JsonKey(name: 'wednesday_close_time')
  final String? wednesdayCloseTime;

  @JsonKey(name: 'thursday_open_time')
  final String? thursdayOpenTime;

  @JsonKey(name: 'thursday_close_time')
  final String? thursdayCloseTime;

  @JsonKey(name: 'friday_open_time')
  final String? fridayOpenTime;

  @JsonKey(name: 'friday_close_time')
  final String? fridayCloseTime;

  @JsonKey(name: 'saturday_open_time')
  final String? saturdayOpenTime;

  @JsonKey(name: 'saturday_close_time')
  final String? saturdayCloseTime;

  @JsonKey(name: 'sunday_open_time')
  final String? sundayOpenTime;

  @JsonKey(name: 'sunday_close_time')
  final String? sundayCloseTime;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'resource_url')
  final String? resourceUrl;

  @JsonKey(name: 'media')
  final List<Media>? media;

  RestaurantModel({
    this.id,
    this.title,
    this.subTitle,
    this.description,
    this.enabled,
    this.phoneNumber,
    this.alternatePhoneNumber,
    this.link,
    this.email,
    this.instagram,
    this.facebook,
    this.youtube,
    this.latitude,
    this.longitude,
    this.mondayOpenTime,
    this.mondayCloseTime,
    this.tuesdayOpenTime,
    this.tuesdayCloseTime,
    this.wednesdayOpenTime,
    this.wednesdayCloseTime,
    this.thursdayOpenTime,
    this.thursdayCloseTime,
    this.fridayOpenTime,
    this.fridayCloseTime,
    this.saturdayOpenTime,
    this.saturdayCloseTime,
    this.sundayOpenTime,
    this.sundayCloseTime,
    this.createdAt,
    this.updatedAt,
    this.resourceUrl,
    this.media,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}

@JsonSerializable()
class Media {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'model_type')
  final String? modelType;

  @JsonKey(name: 'model_id')
  final String? modelId;

  @JsonKey(name: 'collection_name')
  final String? collectionName;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'file_name')
  final String? fileName;

  @JsonKey(name: 'mime_type')
  final String? mimeType;

  @JsonKey(name: 'disk')
  final String? disk;

  @JsonKey(name: 'size')
  final String? size;

  @JsonKey(name: 'custom_properties')
  final MediaCustomProperties? customProperties;

  Media({
    this.id,
    this.modelType,
    this.modelId,
    this.collectionName,
    this.name,
    this.fileName,
    this.mimeType,
    this.disk,
    this.size,
    this.customProperties,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@JsonSerializable()
class MediaCustomProperties {
  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'file_name')
  final String? fileName;

  @JsonKey(name: 'width')
  final int? width;

  @JsonKey(name: 'height')
  final int? height;

  @JsonKey(name: 'generated_conversions')
  final Map<String, bool>? generatedConversions;

  MediaCustomProperties({
    this.name,
    this.fileName,
    this.width,
    this.height,
    this.generatedConversions,
  });

  factory MediaCustomProperties.fromJson(Map<String, dynamic> json) =>
      _$MediaCustomPropertiesFromJson(json);
}
