import 'package:hive/hive.dart';
part 'values.g.dart';
@HiveType(typeId: 6)
class Values {
  @HiveField(0)
  String? value;
  @HiveField(1)
  int? id;

  Values({this.value, this.id});

  Values.fromJson(Map<String, dynamic> json) {
    value = json['value'] ?? '';
    id = json['id'] ?? 0;
  }
}
