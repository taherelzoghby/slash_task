// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_properties.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AvailablePropertiesModelAdapter
    extends TypeAdapter<AvailablePropertiesModel> {
  @override
  final int typeId = 5;

  @override
  AvailablePropertiesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AvailablePropertiesModel(
      property: fields[0] as String?,
      values: (fields[1] as List?)?.cast<Values>(),
    );
  }

  @override
  void write(BinaryWriter writer, AvailablePropertiesModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.property)
      ..writeByte(1)
      ..write(obj.values);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AvailablePropertiesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
