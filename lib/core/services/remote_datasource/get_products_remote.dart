import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/services/hive_db.dart';

import '../../consts/api_service.dart';
import '../../helper/convertListOfMapToListOfModel.dart';

abstract class GetProductsRemote {
  Future<List<ProductModel>> getProductsRemote({required int pageNum});
}

class GetProductsRemoteImpl extends GetProductsRemote {
  final ApiService apiService;
  final HiveDb hiveDb;

  GetProductsRemoteImpl({
    required this.apiService,
    required this.hiveDb,
  });

  @override
  Future<List<ProductModel>> getProductsRemote({
    required int pageNum,
  }) async {
    Map<String, dynamic> result = await apiService.get(pagNum: pageNum);
    List<ProductModel> model = convertModelToList(result['data']);
    //save in hive
    hiveDb.saveProducts(products: model);
    return model;
  }
}
