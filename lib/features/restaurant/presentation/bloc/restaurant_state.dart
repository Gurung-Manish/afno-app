part of 'restaurant_bloc.dart';

@freezed
class RestaurantState with _$RestaurantState {
  const factory RestaurantState.initial() = RestaurantStateInitial;
  const factory RestaurantState.loading() = RestaurantStateLoading;
  const factory RestaurantState.loaded({
    required List<RestaurantModel> restaurants,
  }) = RestaurantStateLoaded;
  const factory RestaurantState.error(String message) = RestaurantStateError;
}
