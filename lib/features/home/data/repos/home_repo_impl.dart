import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slash_task/core/data_source/local_datasource/get_products_local.dart';

import 'package:slash_task/core/errors/failure_message.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

import '../../../../core/data_source/remote_datasource/get_products_remote.dart';
import 'home_repo.dart';

class HomeReoImpl extends HomeRepo {
  final GetProductsRemote getProductsRemote;
  final GetProductsLocal getProductsLocal;

  HomeReoImpl({
    required this.getProductsRemote,
    required this.getProductsLocal,
  });

  @override
  Future<Either<FailureServ, List<ProductModel>>> getProducts({
    required int pagNum,
  }) async {
    try {
      List<ProductModel> products = getProductsLocal.getProductsLocal(
        pageNum: pagNum,
      );
      if (products.isEmpty) {
        products = await getProductsRemote.getProductsRemote(pageNum: pagNum);
      }
      return Right(products);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(message: error.toString()));
    }
  }
}
