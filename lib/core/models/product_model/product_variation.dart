import 'product_properties_values.dart';
import 'product_status_lookups.dart';
import 'product_varient_image.dart';

class ProductVariation {
  int? id;
  int? productId;
  int? price;
  int? quantity;
  dynamic warehouseId;
  bool? isDefault;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? productVariationStatusId;
  dynamic acceptedBy;
  ProductStatusLookups? productStatusLookups;
  List<ProductVarientImage>? productVarientImages;
  List<ProductPropertiesValues>? productPropertiesValues;

  ProductVariation({
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.warehouseId,
    this.isDefault,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.productVariationStatusId,
    this.acceptedBy,
    this.productStatusLookups,
    this.productVarientImages,
    this.productPropertiesValues,
  });

  factory ProductVariation.fromMap(Map<String, dynamic> data) {
    return ProductVariation(
      id: (data['id'] as int?) ?? 0,
      productId: (data['product_id'] as int?) ?? 0,
      price: (data['price'] as int?) ?? 0,
      quantity: (data['quantity'] as int?) ?? 0,
      warehouseId: (data['warehouse_id'] as dynamic) ?? '',
      isDefault: (data['is_default'] as bool?) ?? false,
      deletedAt: (data['deletedAt'] as dynamic) ?? '',
      productPropertiesValues: data['productPropertiesValues'] != null
          ? List<ProductPropertiesValues>.from(
              (data['productPropertiesValues'] as List)
                  .map(
                (e) => ProductPropertiesValues.fromJson(e),
              ),
            )
          : [],
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.parse(data['createdAt'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
      productVariationStatusId:
          (data['product_variation_status_id'] as int?) ?? 0,
      acceptedBy: (data['accepted_by'] as dynamic) ?? '',
      productStatusLookups: data['ProductStatusLookups'] == null
          ? null
          : ProductStatusLookups.fromMap(
              data['ProductStatusLookups'] as Map<String, dynamic>),
      productVarientImages: data['ProductVarientImages'] == null
          ? []
          : List<ProductVarientImage>.from(
              (data['ProductVarientImages'] as List).map(
                (e) => ProductVarientImage.fromMap(e),
              ),
            ),
    );
  }
}
