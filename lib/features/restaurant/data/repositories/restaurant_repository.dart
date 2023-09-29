import 'package:afno_app/core/failure/failure.dart';
import 'package:afno_app/core/service_locator/service_locator.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:afno_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:dartz/dartz.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  @override
  Future<Either<Failure, RestaurantModel>> getRestaurants() {
    return serviceLocator<RestaurantRemoteDataSource>().getRestaurants();
  }
}
