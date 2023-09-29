import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    required int id,
    String? title,
    String? description,
    int? enabled,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'resource_url') required String resourceUrl,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}
