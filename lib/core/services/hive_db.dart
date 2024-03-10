import 'package:hive_flutter/hive_flutter.dart';
import 'package:slash_task/core/models/product_model/available_properties.dart';
import 'package:slash_task/core/models/product_model/brands.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/models/product_model/product_properties_values.dart';
import 'package:slash_task/core/models/product_model/product_varient_image.dart';

import '../consts/const_key.dart';
import '../models/product_model/product_variation.dart';
import '../models/product_model/values.dart';

class HiveDb {
  //init hive
  static init() async {
    await Hive.initFlutter();
    // Register Adapter
    Hive.registerAdapter(ProductModelAdapter());
    Hive.registerAdapter(BrandsModelAdapter());
    Hive.registerAdapter(AvailablePropertiesModelAdapter());
    Hive.registerAdapter(ProductPropertiesValuesAdapter());
    Hive.registerAdapter(ProductVariationAdapter());
    Hive.registerAdapter(ProductVarientImageAdapter());
    Hive.registerAdapter(ValuesAdapter());
    //open boxs
    await Hive.openBox<ProductModel>(kProduct);
  }

//add Products
  saveProducts({required List<ProductModel> products}) {
    final box = Hive.box<ProductModel>(kProduct);
    box.addAll(products);
  }

//get
  List<ProductModel> getProducts() {
    Box<ProductModel> box = Hive.box<ProductModel>(kProduct);
    return box.values.toList();
  }
}
