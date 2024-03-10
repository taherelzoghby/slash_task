part of 'get_product_cubit.dart';

@immutable
abstract class GetProductState {}

class GetProductInitial extends GetProductState {}

class GetProductLoaded extends GetProductState {
  final ProductModel productModel;

  GetProductLoaded({required this.productModel});
}

class GetProductLoading extends GetProductState {}

class GetProductFailure extends GetProductState {
  final String message;

  GetProductFailure({required this.message});
}
