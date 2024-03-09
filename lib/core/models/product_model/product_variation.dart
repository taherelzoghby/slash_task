import 'dart:convert';

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
	});

	factory ProductVariation.fromMap(Map<String, dynamic> data) {
		return ProductVariation(
			id: data['id'] as int?,
			productId: data['product_id'] as int?,
			price: data['price'] as int?,
			quantity: data['quantity'] as int?,
			warehouseId: data['warehouse_id'] as dynamic,
			isDefault: data['is_default'] as bool?,
			deletedAt: data['deletedAt'] as dynamic,
			createdAt: data['createdAt'] == null
						? null
						: DateTime.parse(data['createdAt'] as String),
			updatedAt: data['updatedAt'] == null
						? null
						: DateTime.parse(data['updatedAt'] as String),
			productVariationStatusId: data['product_variation_status_id'] as int?,
			acceptedBy: data['accepted_by'] as dynamic,
			productStatusLookups: data['ProductStatusLookups'] == null
						? null
						: ProductStatusLookups.fromMap(data['ProductStatusLookups'] as Map<String, dynamic>),
			productVarientImages: (data['ProductVarientImages'] as List<dynamic>?)
						?.map((e) => ProductVarientImage.fromMap(e as Map<String, dynamic>))
						.toList(),
		);
	}



	Map<String, dynamic> toMap() {
		return {
			'id': id,
			'product_id': productId,
			'price': price,
			'quantity': quantity,
			'warehouse_id': warehouseId,
			'is_default': isDefault,
			'deletedAt': deletedAt,
			'createdAt': createdAt?.toIso8601String(),
			'updatedAt': updatedAt?.toIso8601String(),
			'product_variation_status_id': productVariationStatusId,
			'accepted_by': acceptedBy,
			'ProductStatusLookups': productStatusLookups?.toMap(),
			'ProductVarientImages': productVarientImages?.map((e) => e.toMap()).toList(),		};
	}

}
