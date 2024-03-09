import 'dart:convert';

class SubCategories {
	int? id;
	String? name;
	dynamic deletedAt;
	DateTime? createdAt;
	DateTime? updatedAt;
	int? categoryId;
	String? imagePath;

	SubCategories({
		this.id, 
		this.name, 
		this.deletedAt, 
		this.createdAt, 
		this.updatedAt, 
		this.categoryId, 
		this.imagePath, 
	});

	factory SubCategories.fromMap(Map<String, dynamic> data) {
		return SubCategories(
			id: data['id'] as int?,
			name: data['name'] as String?,
			deletedAt: data['deletedAt'] as dynamic,
			createdAt: data['createdAt'] == null
						? null
						: DateTime.parse(data['createdAt'] as String),
			updatedAt: data['updatedAt'] == null
						? null
						: DateTime.parse(data['updatedAt'] as String),
			categoryId: data['category_id'] as int?,
			imagePath: data['image_path'] as String?,
		);
	}



	Map<String, dynamic> toMap() {
		return {
			'id': id,
			'name': name,
			'deletedAt': deletedAt,
			'createdAt': createdAt?.toIso8601String(),
			'updatedAt': updatedAt?.toIso8601String(),
			'category_id': categoryId,
			'image_path': imagePath,		};
	}

}
