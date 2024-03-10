import 'available_properties.dart';
import 'brands.dart';
import 'product_variation.dart';
import 'sub_categories.dart';

class ProductModel {
  int? id;
  String? name;
  String? type;
  String? description;
  int? subCategoryId;
  int? brandId;
  dynamic bostaSizeId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? productRating;
  int? estimatedDaysPreparing;
  BrandsModel? brands;
  List<ProductVariation>? productVariations;
  List<AvailablePropertiesModel>? availableProperties;
  SubCategories? subCategories;
  dynamic sizeChart;
  int? notApprovedVariants;

  ProductModel({
    this.id,
    this.name,
    this.type,
    this.description,
    this.subCategoryId,
    this.brandId,
    this.bostaSizeId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productRating,
    this.estimatedDaysPreparing,
    this.brands,
    this.productVariations,
    this.subCategories,
    this.sizeChart,
    this.notApprovedVariants,
    this.availableProperties,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: (data['id'] as int?) ?? 0,
      name: (data['name'] as String?) ?? '',
      type: (data['type'] as String?) ?? '',
      description: (data['description'] as String?) ?? '',
      subCategoryId: (data['sub_category_id'] as int?) ?? 0,
      brandId: (data['brand_id'] as int?) ?? 0,
      bostaSizeId: (data['bosta_size_id'] as dynamic) ?? '',
      availableProperties: data['avaiableProperties'] != null
          ? List<AvailablePropertiesModel>.from(
              (data['avaiableProperties'] as List).map(
                (e) => AvailablePropertiesModel.fromJson(e),
              ),
            )
          : [],
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.parse(data['createdAt'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
      deletedAt: (data['deletedAt'] as dynamic) ?? '',
      productRating: (data['product_rating'] as int?) ?? 0,
      estimatedDaysPreparing: (data['estimated_days_preparing'] as int?) ?? 0,
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
      subCategories: data['SubCategories'] == null
          ? null
          : SubCategories.fromMap(
              data['SubCategories'] as Map<String, dynamic>),
      sizeChart: (data['SizeChart'] as dynamic) ?? '',
      notApprovedVariants: (data['notApprovedVariants'] as int?) ?? 0,
    );
  }
}
