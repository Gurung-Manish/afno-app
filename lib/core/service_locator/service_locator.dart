import 'package:afno_app/core/network/api_service.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator() async {
  serviceLocator.registerSingleton<ApiService>(ApiService());
}
