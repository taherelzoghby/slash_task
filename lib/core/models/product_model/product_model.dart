import 'package:hive/hive.dart';

import 'available_properties.dart';
import 'brands.dart';
import 'product_variation.dart';
part 'product_model.g.dart';
@HiveType(typeId: 0)
class ProductModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? type;
  @HiveField(3)
  String? description;
  @HiveField(4)
  int? brandId;
  @HiveField(5)
  BrandsModel? brands;
  @HiveField(6)
  List<ProductVariation>? productVariations;
  @HiveField(7)
  List<AvailablePropertiesModel>? availableProperties;

  ProductModel({
    this.id,
    this.name,
    this.type,
    this.description,
    this.brandId,
    this.brands,
    this.productVariations,
    this.availableProperties,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: (data['id'] as int?) ?? 0,
      name: (data['name'] as String?) ?? '',
      type: (data['type'] as String?) ?? '',
      description: (data['description'] as String?) ?? '',
      brandId: (data['brand_id'] as int?) ?? 0,
      availableProperties: data['avaiableProperties'] != null
          ? List<AvailablePropertiesModel>.from(
              (data['avaiableProperties'] as List).map(
                (e) => AvailablePropertiesModel.fromJson(e),
              ),
            )
          : [],
      brands: data['Brands'] == null
          ? null
          : BrandsModel.fromMap(data['Brands'] as Map<String, dynamic>),
      productVariations: data['ProductVariations'] == null
          ? []
          : List<ProductVariation>.from(
              (data['ProductVariations'] as List).map(
                (e) => ProductVariation.fromMap(e),
              ),
            ),
    );
  }
}
