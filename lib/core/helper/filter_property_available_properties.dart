import '../models/product_model/available_properties.dart';
import '../models/product_model/product_model.dart';
import '../models/product_model/values.dart';

List<Values>? getValues({
  required ProductModel productModel,
  required String property,
}) {
  List<AvailablePropertiesModel> result = filterProperty(
    productModel: productModel,
    property: property,
  );
  List<Values>? sizes = result[0].values;
  return sizes;
}

List<AvailablePropertiesModel> filterProperty({
  required ProductModel productModel,
  required String property,
}) {
  return productModel.availableProperties!
      .where((e) => e.property == property)
      .toList();
}
