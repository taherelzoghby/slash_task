import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:slash_task/core/consts/api_service.dart';

final getIt = GetIt.instance;

void setup() {
  //register dio
  getIt.registerSingleton<Dio>(Dio());
  //register api service
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: getIt.get<Dio>(),
    ),
  );
}
