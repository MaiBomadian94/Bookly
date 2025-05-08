import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/repositories/home_repo.dart';
import 'package:bookly_app/features/home/data/repositories/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  sl.registerLazySingleton<ApiService>(() => ApiService(Dio()));
  sl.registerLazySingleton<HomeRepository>(() => HomeRepoImpl());
}
