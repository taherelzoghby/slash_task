import 'package:hive/hive.dart';

import 'values.dart';
part 'available_properties.g.dart';
@HiveType(typeId: 5)
class AvailablePropertiesModel {
  @HiveField(0)
  String? property;
  @HiveField(1)
  List<Values>? values;

  AvailablePropertiesModel({this.property, this.values});

  AvailablePropertiesModel.fromJson(Map<String, dynamic> json) {
    property = json['property'] ?? '';
    values = json['values'] == null
        ? null
        : List<Values>.from(
            (json['values'] as List).map(
              (e) => Values.fromJson(e),
            ),
          );
  }
}
