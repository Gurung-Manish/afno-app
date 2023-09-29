import 'package:afno_app/core/failure/failure.dart';
import 'package:afno_app/core/service_locator/service_locator.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class GetAllRestaurantUseCase {
  Future<Either<Failure, List<RestaurantModel>>> getRestaurants() async {
    final response =
        await serviceLocator<RestaurantRepository>().getRestaurants();
    if (response.isRight()) {
      final remoteRestaurantResponse = response.getOrElse(() => []);
      if (kDebugMode) {
        print("remoteUserResponse=>$remoteRestaurantResponse");
      }
    }
    return response;
  }
}
