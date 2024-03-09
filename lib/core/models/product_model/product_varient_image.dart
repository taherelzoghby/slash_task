import 'dart:convert';

class ProductVarientImage {
	int? id;
	String? imagePath;
	int? productVarientId;
	DateTime? createdAt;
	DateTime? updatedAt;

	ProductVarientImage({
		this.id, 
		this.imagePath, 
		this.productVarientId, 
		this.createdAt, 
		this.updatedAt, 
	});

	factory ProductVarientImage.fromMap(Map<String, dynamic> data) {
		return ProductVarientImage(
			id: data['id'] as int?,
			imagePath: data['image_path'] as String?,
			productVarientId: data['product_varient_id'] as int?,
			createdAt: data['createdAt'] == null
						? null
						: DateTime.parse(data['createdAt'] as String),
			updatedAt: data['updatedAt'] == null
						? null
						: DateTime.parse(data['updatedAt'] as String),
		);
	}



	Map<String, dynamic> toMap() {
		return {
			'id': id,
			'image_path': imagePath,
			'product_varient_id': productVarientId,
			'createdAt': createdAt?.toIso8601String(),
			'updatedAt': updatedAt?.toIso8601String(),		};
	}

}
