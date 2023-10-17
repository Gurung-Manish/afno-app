import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    @JsonKey(name: 'id') int? id,
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
    List<Media>? media,
  }) = _Restaurant;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'model_type') String? modelType,
    @JsonKey(name: 'model_id') String? modelId,
    @JsonKey(name: 'collection_name') String? collectionName,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'disk') String? disk,
    @JsonKey(name: 'size') String? size,
    @JsonKey(name: 'custom_properties') MediaCustomProperties? customProperties,
    @JsonKey(name: 'manipulations') List<dynamic>? manipulations,
    @JsonKey(name: 'responsive_images') List<dynamic>? responsiveImages,
    @JsonKey(name: 'order_column') String? orderColumn,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class MediaCustomProperties with _$MediaCustomProperties {
  const factory MediaCustomProperties({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'width') String? width,
    @JsonKey(name: 'height') String? height,
    @JsonKey(name: 'generated_conversions')
    Map<String, bool>? generatedConversions,
  }) = _MediaCustomProperties;

  factory MediaCustomProperties.fromJson(Map<String, dynamic> json) =>
      _$MediaCustomPropertiesFromJson(json);
}
