import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slash_task/core/consts/api_service.dart';

import 'package:slash_task/core/errors/failure_message.dart';
import 'package:slash_task/core/helper/convertListOfMapToListOfModel.dart';

import 'package:slash_task/core/models/product_model/product_model.dart';

import 'home_repo.dart';

class HomeReoImpl extends HomeRepo {
  final ApiService apiService;

  HomeReoImpl({required this.apiService});

  @override
  Future<Either<FailureServ, List<ProductModel>>> getProducts() async {
    try {
      Map<String, dynamic> result = await apiService.get();
      List<ProductModel> model = convertModelToList(result['data']);
      return Right(model);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
