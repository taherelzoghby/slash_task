// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 0;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      type: fields[2] as String?,
      description: fields[3] as String?,
      brandId: fields[4] as int?,
      brands: fields[5] as BrandsModel?,
      variations: (fields[6] as List?)?.cast<ProductVariation>(),
      availableProperties:
          (fields[7] as List?)?.cast<AvailablePropertiesModel>(),
      brandImage: fields[9] as String?,
      brandName: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.brandId)
      ..writeByte(5)
      ..write(obj.brands)
      ..writeByte(6)
      ..write(obj.variations)
      ..writeByte(7)
      ..write(obj.availableProperties)
      ..writeByte(8)
      ..write(obj.brandName)
      ..writeByte(9)
      ..write(obj.brandImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
