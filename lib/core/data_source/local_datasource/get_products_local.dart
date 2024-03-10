import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/services/hive_db.dart';

abstract class GetProductsLocal {
  List<ProductModel> getProductsLocal({required int pageNum});
}

class GetProductsLocalImpl extends GetProductsLocal {
  final HiveDb hiveDb;

  GetProductsLocalImpl({required this.hiveDb});

  @override
  List<ProductModel> getProductsLocal({required int pageNum}) {
    List<ProductModel> products = hiveDb.getProducts();
    int start = (pageNum - 1) * 20;//0
    int end = (pageNum) * 20;//20
    int length = products.length;
    if (start >= length || end > length) {//out
      return [];
    }

    return products.sublist(start, end);
  }
}
