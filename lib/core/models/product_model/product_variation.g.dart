// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductVariationAdapter extends TypeAdapter<ProductVariation> {
  @override
  final int typeId = 2;

  @override
  ProductVariation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductVariation(
      id: fields[0] as int?,
      productId: fields[1] as int?,
      price: fields[2] as int?,
      quantity: fields[3] as int?,
      isDefault: fields[4] as bool?,
      productVarientImages: (fields[5] as List?)?.cast<ProductVarientImage>(),
      productPropertiesValues:
          (fields[6] as List?)?.cast<ProductPropertiesValues>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductVariation obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.isDefault)
      ..writeByte(5)
      ..write(obj.productVarientImages)
      ..writeByte(6)
      ..write(obj.productPropertiesValues);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVariationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
