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
  List<ProductVariation>? variations;
  @HiveField(7)
  List<AvailablePropertiesModel>? availableProperties;
  @HiveField(8)
  String? brandName;
  @HiveField(9)
  String? brandImage;

  ProductModel({
    this.id,
    this.name,
    this.type,
    this.description,
    this.brandId,
    this.brands,
    this.variations,
    this.availableProperties,
    this.brandImage,
    this.brandName,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: (data['id'] as int?) ?? 0,
      name: (data['name'] as String?) ?? '',
      type: (data['type'] as String?) ?? '',
      brandImage: data['brandImage'] ?? '',
      brandName: data['brandName'] ?? '',
      description: (data['description'] as String?) ?? '',
      brandId: (data['brand_id'] as int?) ?? 0,
      availableProperties: data['avaiableProperties'] != null
          ? List<AvailablePropertiesModel>.from(
              (data['avaiableProperties'] as List).map(
                (e) => AvailablePropertiesModel.fromJson(e),
              ),
            )
          : null,
      brands: data['Brands'] == null
          ? null
          : BrandsModel.fromMap(data['Brands'] as Map<String, dynamic>),
      variations: data['variations'] != null
          ? List<ProductVariation>.from(
              (data['variations'] as List).map(
                (e) => ProductVariation.fromMap(e),
              ),
            )
          : data['ProductVariations'] != null
              ? List<ProductVariation>.from(
                  (data['ProductVariations'] as List).map(
                    (e) => ProductVariation.fromMap(e),
                  ),
                )
              : null,
    );
  }
}
