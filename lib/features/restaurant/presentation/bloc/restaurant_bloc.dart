import 'package:afno_app/core/service_locator/service_locator.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';
part 'restaurant_bloc.freezed.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  RestaurantBloc() : super(const RestaurantStateInitial()) {
    on<_GetRestaurants>((event, emit) async {
      emit(const RestaurantState.loading());
      var result =
          await serviceLocator<RestaurantRepository>().getRestaurants();
      result.fold(
        (failure) {
          if (kDebugMode) {
            print("Response->ERROR");
            print(failure.message);
          }
          emit(RestaurantState.error(failure.message));
        },
        (data) {
          if (kDebugMode) {
            print("Response->SUCCESS");
            print(data);
          }
          emit(RestaurantState.loaded(restaurants: data));
        },
      );
    });
  }
}
