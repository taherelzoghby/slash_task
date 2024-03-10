import 'package:hive/hive.dart';
part 'product_varient_image.g.dart';
@HiveType(typeId: 3)
class ProductVarientImage {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? imagePath;
  @HiveField(2)
  int? productVarientId;

  ProductVarientImage({
    this.id,
    this.imagePath,
    this.productVarientId,
  });

  factory ProductVarientImage.fromMap(Map<String, dynamic> data) {
    return ProductVarientImage(
      id: (data['id'] as int?) ?? 0,
      imagePath: (data['image_path'] as String?) ?? '',
      productVarientId: (data['product_varient_id'] as int?) ?? 0,
    );
  }
}
