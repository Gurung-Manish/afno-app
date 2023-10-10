import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    required int id,
    String? title,
    String? description,
    String? facebook,
    String? website,
    String? instagram,
    int? enabled,
    double? latitude,
    double? longitude,
    List<Media>? media,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'resource_url') required String resourceUrl,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    required int id,
    @JsonKey(name: 'model_type') required String modelType,
    @JsonKey(name: 'model_id') required int modelId,
    required String uuid,
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
    @JsonKey(name: 'preview_url') String? previewUrl,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
