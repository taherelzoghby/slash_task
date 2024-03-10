// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrandsModelAdapter extends TypeAdapter<BrandsModel> {
  @override
  final int typeId = 1;

  @override
  BrandsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandsModel(
      id: fields[0] as int?,
      brandType: fields[1] as String?,
      brandName: fields[2] as String?,
      brandWebsiteLink: fields[3] as dynamic,
      brandMobileNumber: fields[4] as String?,
      brandEmailAddress: fields[5] as String?,
      taxIdNumber: fields[6] as dynamic,
      brandDescription: fields[7] as String?,
      brandLogoImagePath: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BrandsModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.brandType)
      ..writeByte(2)
      ..write(obj.brandName)
      ..writeByte(3)
      ..write(obj.brandWebsiteLink)
      ..writeByte(4)
      ..write(obj.brandMobileNumber)
      ..writeByte(5)
      ..write(obj.brandEmailAddress)
      ..writeByte(6)
      ..write(obj.taxIdNumber)
      ..writeByte(7)
      ..write(obj.brandDescription)
      ..writeByte(8)
      ..write(obj.brandLogoImagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
