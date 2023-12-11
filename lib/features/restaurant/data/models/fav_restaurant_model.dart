import 'package:freezed_annotation/freezed_annotation.dart';

part 'fav_restaurant_model.freezed.dart';
part 'fav_restaurant_model.g.dart';

@freezed
abstract class FavRestaurantModel with _$FavRestaurantModel {
  const factory FavRestaurantModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fav') bool? fav,
  }) = _FavRestaurantModel;

  factory FavRestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$FavRestaurantModelFromJson(json);
}
