class BrandsModel {
  int? id;
  String? brandType;
  String? brandName;
  String? brandFacebookPageLink;
  String? brandInstagramPageLink;
  dynamic brandWebsiteLink;
  String? brandMobileNumber;
  String? brandEmailAddress;
  dynamic taxIdNumber;
  String? brandDescription;
  String? brandLogoImagePath;
  int? brandStatusId;
  dynamic brandStoreAddressId;
  int? brandCategoryId;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? brandSellerId;
  dynamic brandId;
  dynamic slashContractPath;
  int? brandRating;
  int? daysLimitToReturn;
  dynamic planId;

  BrandsModel({
    this.id,
    this.brandType,
    this.brandName,
    this.brandFacebookPageLink,
    this.brandInstagramPageLink,
    this.brandWebsiteLink,
    this.brandMobileNumber,
    this.brandEmailAddress,
    this.taxIdNumber,
    this.brandDescription,
    this.brandLogoImagePath,
    this.brandStatusId,
    this.brandStoreAddressId,
    this.brandCategoryId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.brandSellerId,
    this.brandId,
    this.slashContractPath,
    this.brandRating,
    this.daysLimitToReturn,
    this.planId,
  });

  factory BrandsModel.fromMap(Map<String, dynamic> data) {
    return BrandsModel(
      id: data['id'] as int?,
      brandType: (data['brand_type'] as String?) ?? '',
      brandName: (data['brand_name'] as String?) ?? '',
      brandFacebookPageLink:
          (data['brand_facebook_page_link'] as String?) ?? '',
      brandInstagramPageLink:
          (data['brand_instagram_page_link'] as String?) ?? '',
      brandWebsiteLink: (data['brand_website_link'] as dynamic) ?? '',
      brandMobileNumber: (data['brand_mobile_number'] as String?) ?? '',
      brandEmailAddress: (data['brand_email_address'] as String?) ?? '',
      taxIdNumber: (data['tax_id_number'] as dynamic) ?? '',
      brandDescription: (data['brand_description'] as String?) ?? '',
      brandLogoImagePath: (data['brand_logo_image_path'] as String?) ?? '',
      brandStatusId: (data['brand_status_id'] as int?) ?? 0,
      brandStoreAddressId: (data['brand_store_address_id'] as dynamic) ?? '',
      brandCategoryId: (data['brand_category_id'] as int?) ?? 0,
      deletedAt: (data['deletedAt'] as dynamic) ?? '',
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.parse(data['createdAt'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
      brandSellerId: (data['brand_seller_id'] as int?) ?? 0,
      brandId: (data['brand_id'] as dynamic) ?? '',
      slashContractPath: (data['slash_contract_path'] as dynamic) ?? '',
      brandRating: (data['brand_rating'] as int?) ?? 0,
      daysLimitToReturn: (data['days_limit_to_return'] as int?) ?? 0,
      planId: (data['planId'] as dynamic) ?? '',
    );
  }

}
