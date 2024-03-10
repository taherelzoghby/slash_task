// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_varient_image.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductVarientImageAdapter extends TypeAdapter<ProductVarientImage> {
  @override
  final int typeId = 3;

  @override
  ProductVarientImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductVarientImage(
      id: fields[0] as int?,
      imagePath: fields[1] as String?,
      productVarientId: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductVarientImage obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imagePath)
      ..writeByte(2)
      ..write(obj.productVarientId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVarientImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
