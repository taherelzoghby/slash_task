import 'package:dartz/dartz.dart';
import 'package:slash_task/core/errors/failure_message.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

abstract class DetailsRepo {
  Future<Either<FailureServ, ProductModel>> getProduct({
    required int id,
  });
}
