import 'package:slash_task/core/models/product_model/product_model.dart';

List<ProductModel> convertModelToList(List result) {
  return List<ProductModel>.from(
    (result).map(
          (item) => ProductModel.fromMap(item),
    ),
  );
}