// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'values.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ValuesAdapter extends TypeAdapter<Values> {
  @override
  final int typeId = 6;

  @override
  Values read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Values(
      value: fields[0] as String?,
      id: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Values obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValuesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
