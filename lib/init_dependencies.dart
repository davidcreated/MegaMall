import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  
  serviceLocator.registerLazySingleton(() => sharedPreferences);
  serviceLocator.registerLazySingleton(() => Dio());

  _initProduct();
}

void _initProduct() {
  // DataSources
  // serviceLocator.registerLazySingleton(() => ProductRemoteDataSourceImpl(serviceLocator()));

  // Repositories
  // serviceLocator.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(serviceLocator()));

  // UseCases
  // serviceLocator.registerFactory(() => GetProducts(serviceLocator()));

  // Providers
  // serviceLocator.registerFactory(() => ProductProvider(getProducts: serviceLocator()));
}
