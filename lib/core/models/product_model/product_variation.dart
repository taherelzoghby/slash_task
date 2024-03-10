import 'package:hive/hive.dart';

import 'product_properties_values.dart';
import 'product_varient_image.dart';

part 'product_variation.g.dart';

@HiveType(typeId: 2)
class ProductVariation {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? productId;
  @HiveField(2)
  int? price;
  @HiveField(3)
  int? quantity;
  @HiveField(4)
  bool? isDefault;
  @HiveField(5)
  List<ProductVarientImage>? productVarientImages;
  @HiveField(6)
  List<ProductPropertiesValues>? productPropertiesValues;

  ProductVariation({
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.isDefault,
    this.productVarientImages,
    this.productPropertiesValues,
  });

  factory ProductVariation.fromMap(Map<String, dynamic> data) {
    return ProductVariation(
      id: (data['id'] as int?) ?? 0,
      productId: (data['productId'] as int?) ?? 0,
      price: (data['price'] as int?) ?? 0,
      quantity: (data['quantity'] as int?) ?? 0,
      isDefault: (data['isDefault'] as bool?) ?? false,
      productVarientImages: data['ProductVarientImages'] == null
          ? null
          : List<ProductVarientImage>.from(
              (data['ProductVarientImages'] as List).map(
                (e) => ProductVarientImage.fromMap(e),
              ),
            ),
      productPropertiesValues: data['productPropertiesValues'] != null
          ? List<ProductPropertiesValues>.from(
              (data['productPropertiesValues'] as List).map(
                (e) => ProductPropertiesValues.fromMap(e),
              ),
            )
          : null,
    );
  }
}
