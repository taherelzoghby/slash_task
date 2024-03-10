// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_properties_values.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductPropertiesValuesAdapter
    extends TypeAdapter<ProductPropertiesValues> {
  @override
  final int typeId = 4;

  @override
  ProductPropertiesValues read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductPropertiesValues(
      value: fields[0] as String?,
      property: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductPropertiesValues obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.property);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductPropertiesValuesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
