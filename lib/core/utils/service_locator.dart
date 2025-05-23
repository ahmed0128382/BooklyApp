import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:storeapp/core/utils/api_service.dart';
import 'package:storeapp/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
