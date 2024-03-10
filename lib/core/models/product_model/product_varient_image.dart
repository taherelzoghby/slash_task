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
      id: (data['id'] as int?) ?? 0,
      imagePath: (data['image_path'] as String?) ?? '',
      productVarientId: (data['product_varient_id'] as int?) ?? 0,
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.parse(data['createdAt'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
    );
  }


}
