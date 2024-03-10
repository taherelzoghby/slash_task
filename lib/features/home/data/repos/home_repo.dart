import 'package:dartz/dartz.dart';
import 'package:slash_task/core/errors/failure_message.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<FailureServ, List<ProductModel>>> getProducts({
    required int pagNum,
  });
}
