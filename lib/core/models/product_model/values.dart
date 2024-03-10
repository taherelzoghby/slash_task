class Values {
  String? value;
  int? id;

  Values({this.value, this.id});

  Values.fromJson(Map<String, dynamic> json) {
    value = json['value'] ?? '';
    id = json['id'] ?? 0;
  }
}
