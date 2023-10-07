import 'package:afno_app/core/network/api_service.dart';
import 'package:afno_app/features/restaurant/data/datasources/restaurant_datasource.dart';
import 'package:afno_app/features/restaurant/data/repositories/restaurant_repository.dart';
import 'package:afno_app/features/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:afno_app/features/restaurant/domain/usecases/get_all_restaurant_usecase.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  serviceLocator.registerSingleton<ApiService>(ApiService());
  // ! Login Api
  //repo
  serviceLocator
      .registerFactory<RestaurantRepository>(() => RestaurantRepositoryImpl());
  //datasource
  serviceLocator.registerFactory<RestaurantRemoteDataSource>(
      () => RestaurantDataSourceImpl());
  //usecase
  serviceLocator.registerFactory<GetAllRestaurantUseCase>(
      () => GetAllRestaurantUseCase());
}
