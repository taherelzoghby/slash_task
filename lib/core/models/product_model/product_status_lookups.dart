class ProductStatusLookups {
  int? id;
  String? name;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProductStatusLookups({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductStatusLookups.fromMap(Map<String, dynamic> data) {
    return ProductStatusLookups(
      id: (data['id'] as int?) ?? 0,
      name: (data['name'] as String?) ?? '',
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.parse(data['createdAt'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }
}
