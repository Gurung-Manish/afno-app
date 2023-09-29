import 'package:afno_app/core/failure/failure.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:dartz/dartz.dart';

abstract class RestaurantRepository {
  Future<Either<Failure, RestaurantModel>> getRestaurants();
}
