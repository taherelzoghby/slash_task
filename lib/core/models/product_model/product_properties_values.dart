class ProductPropertiesValues {
  String? value;
  String? property;

  ProductPropertiesValues({this.value, this.property});

  ProductPropertiesValues.fromJson(Map<String, dynamic> json) {
    value = json['value'] ?? '';
    property = json['property'] ?? '';
  }
}
