part of 'get_products_cubit.dart';

@immutable
abstract class GetProductsState {}

class GetProductsInitial extends GetProductsState {}

class GetProductsLoaded extends GetProductsState {
  final List<ProductModel> products;

  GetProductsLoaded({required this.products});
}

class GetProductsLoading extends GetProductsState {}

class GetProductsError extends GetProductsState {
  final String message;

  GetProductsError({required this.message});
}

class GetProductsLoadingPagination extends GetProductsState {}

class GetProductsErrorPagination extends GetProductsState {}
