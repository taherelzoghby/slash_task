import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'product_properties_values.g.dart';
@HiveType(typeId: 4)
class ProductPropertiesValues {
  @HiveField(0)
  String? value;
  @HiveField(1)
  String? property;

  ProductPropertiesValues({this.value, this.property});

  ProductPropertiesValues.fromMap(Map<String, dynamic> json) {
    value = json['value'] ?? '';
    property = json['property'] ?? '';
  }
}
