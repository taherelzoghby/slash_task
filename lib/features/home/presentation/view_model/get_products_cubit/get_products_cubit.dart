import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:slash_task/core/errors/failure_message.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  final HomeRepo homeRepo;

  GetProductsCubit(this.homeRepo) : super(GetProductsInitial());

  getProducts() async {
    emit(GetProductsLoading());
    Either<FailureServ, List<ProductModel>> result =
        await homeRepo.getProducts();
    result.fold(
      (failure) {
        emit(
          GetProductsError(message: failure.message),
        );
      },
      (products) {
        emit(
          GetProductsLoaded(products: products),
        );
      },
    );
  }
}
