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
      id: (data['id'] as int?) ?? 0,
      name: (data['name'] as String?) ?? '',
      deletedAt: (data['deletedAt'] as dynamic) ?? '',
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.parse(data['createdAt'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
      categoryId: (data['category_id'] as int?) ?? 0,
      imagePath: (data['image_path'] as String?) ?? '',
    );
  }

}
