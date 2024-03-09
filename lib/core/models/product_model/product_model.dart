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
	Brands? brands;
	List<ProductVariation>? productVariations;
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
	});

	factory ProductModel.fromMap(Map<String, dynamic> data) {
		return ProductModel(
			id: data['id'] as int?,
			name: data['name'] as String?,
			type: data['type'] as String?,
			description: data['description'] as String?,
			subCategoryId: data['sub_category_id'] as int?,
			brandId: data['brand_id'] as int?,
			bostaSizeId: data['bosta_size_id'] as dynamic,
			createdAt: data['createdAt'] == null
						? null
						: DateTime.parse(data['createdAt'] as String),
			updatedAt: data['updatedAt'] == null
						? null
						: DateTime.parse(data['updatedAt'] as String),
			deletedAt: data['deletedAt'] as dynamic,
			productRating: data['product_rating'] as int?,
			estimatedDaysPreparing: data['estimated_days_preparing'] as int?,
			brands: data['Brands'] == null
						? null
						: Brands.fromMap(data['Brands'] as Map<String, dynamic>),
			productVariations: (data['ProductVariations'] as List<dynamic>?)
						?.map((e) => ProductVariation.fromMap(e as Map<String, dynamic>))
						.toList(),
			subCategories: data['SubCategories'] == null
						? null
						: SubCategories.fromMap(data['SubCategories'] as Map<String, dynamic>),
			sizeChart: data['SizeChart'] as dynamic,
			notApprovedVariants: data['notApprovedVariants'] as int?,
		);
	}



	Map<String, dynamic> toMap() {
		return {
			'id': id,
			'name': name,
			'type': type,
			'description': description,
			'sub_category_id': subCategoryId,
			'brand_id': brandId,
			'bosta_size_id': bostaSizeId,
			'createdAt': createdAt?.toIso8601String(),
			'updatedAt': updatedAt?.toIso8601String(),
			'deletedAt': deletedAt,
			'product_rating': productRating,
			'estimated_days_preparing': estimatedDaysPreparing,
			'Brands': brands?.toMap(),
			'ProductVariations': productVariations?.map((e) => e.toMap()).toList(),
			'SubCategories': subCategories?.toMap(),
			'SizeChart': sizeChart,
			'notApprovedVariants': notApprovedVariants,
					};
	}

}
