import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/core/errors/failure_message.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

import '../../../data/repos/details_repo.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  final DetailsRepo detailsRepo;

  GetProductCubit(this.detailsRepo) : super(GetProductInitial());
  ProductModel productModel = ProductModel();

  getProduct(int id) async {
    emit(GetProductLoading());
    Either<FailureServ, ProductModel> result = await detailsRepo.getProduct(
      id: id,
    );
    result.fold(
      (failure) => emit(
        GetProductFailure(message: failure.message),
      ),
      (product) {
        productModel = product;
        emit(GetProductLoaded(productModel: productModel));
      },
    );
  }
}
