import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_flow/core/networking/api_service.dart';
import 'package:shop_flow/core/networking/dio_factory.dart';
import 'package:shop_flow/features/home/data/repos/home_repo.dart';
import 'package:shop_flow/features/home/logic/home_cubit/home_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
