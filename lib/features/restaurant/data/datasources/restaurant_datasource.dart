import 'package:afno_app/core/constants/constants.dart';
import 'package:afno_app/core/failure/failure.dart';
import 'package:afno_app/core/network/api_list.dart';
import 'package:afno_app/core/network/api_service.dart';
import 'package:afno_app/features/restaurant/data/models/restaurant_model.dart';
import 'package:dartz/dartz.dart';

abstract class RestaurantRemoteDataSource {
  Future<Either<Failure, List<RestaurantModel>>> getRestaurants();
}

class RestaurantDataSourceImpl implements RestaurantRemoteDataSource {
  final ApiService request = ApiService();

  @override
  Future<Either<Failure, List<RestaurantModel>>> getRestaurants() async {
    try {
      final String baseUrl = AppConstants.baseUrl;
      if (baseUrl.isNotEmpty) {
        final response = await request.get(
          ApiEndpoint(baseUrl, "${ApiList.getAllRestaurants}/en", {}),
        );

        if (response.statusCode == 200) {
          List restaurants = response.data["data"];

          List<RestaurantModel> restaurantFormatted = restaurants.map((e) {
            return RestaurantModel.fromJson(e);
          }).toList();
          if (restaurants.isNotEmpty) {
            return Right(restaurantFormatted);
          } else {
            return Left(Exception("error: ${response.data}"));
          }
        } else if (response.statusCode == 401) {
          return Left(ConnectionFailure(response.data));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
      return const Left(ConnectionFailure("BaseUrl not found"));
    } catch (e) {
      return const Left(
        Exception('Exception Occured in RestaurantsRemoteDataSourceImpl'),
      );
    }
  }
}
