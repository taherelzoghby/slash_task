import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slash_task/core/consts/api_service.dart';

import 'package:slash_task/core/errors/failure_message.dart';

import 'package:slash_task/core/models/product_model/product_model.dart';

import 'details_repo.dart';

class DetailsRepoImpl extends DetailsRepo {
  final ApiService apiService;

  DetailsRepoImpl({required this.apiService});

  @override
  Future<Either<FailureServ, ProductModel>> getProduct(
      {required int id}) async {
    try {
      Map<String, dynamic> result = await apiService.get(id: '$id');
      ProductModel productModel = ProductModel.fromMap(result['data']);
      return Right(productModel);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
