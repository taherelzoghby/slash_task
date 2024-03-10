import 'values.dart';

class AvailablePropertiesModel {
  String? property;
  List<Values>? values;

  AvailablePropertiesModel({this.property, this.values});

  AvailablePropertiesModel.fromJson(Map<String, dynamic> json) {
    property = json['property'] ?? '';
    values = json['values'] == null
        ? []
        : List<Values>.from(
            (json['values'] as List).map(
              (e) => Values.fromJson(e),
            ),
          );
  }
}
