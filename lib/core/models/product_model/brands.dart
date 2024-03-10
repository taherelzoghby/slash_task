import 'package:hive/hive.dart';
part 'brands.g.dart';
@HiveType(typeId: 1)
class BrandsModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? brandType;
  @HiveField(2)
  String? brandName;
  @HiveField(3)
  dynamic brandWebsiteLink;
  @HiveField(4)
  String? brandMobileNumber;
  @HiveField(5)
  String? brandEmailAddress;
  @HiveField(6)
  dynamic taxIdNumber;
  @HiveField(7)
  String? brandDescription;
  @HiveField(8)
  String? brandLogoImagePath;

  BrandsModel({
    this.id,
    this.brandType,
    this.brandName,
    this.brandWebsiteLink,
    this.brandMobileNumber,
    this.brandEmailAddress,
    this.taxIdNumber,
    this.brandDescription,
    this.brandLogoImagePath,
  });

  factory BrandsModel.fromMap(Map<String, dynamic> data) {
    return BrandsModel(
      id: data['id'] as int?,
      brandType: (data['brand_type'] as String?) ?? '',
      brandName: (data['brand_name'] as String?) ?? '',
      brandWebsiteLink: (data['brand_website_link'] as dynamic) ?? '',
      brandMobileNumber: (data['brand_mobile_number'] as String?) ?? '',
      brandEmailAddress: (data['brand_email_address'] as String?) ?? '',
      taxIdNumber: (data['tax_id_number'] as dynamic) ?? '',
      brandDescription: (data['brand_description'] as String?) ?? '',
      brandLogoImagePath: (data['brand_logo_image_path'] as String?) ?? '',
    );
  }
}
