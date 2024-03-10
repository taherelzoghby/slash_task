
import 'package:flutter/material.dart';

import '../../../../../core/models/product_model/product_model.dart';
import 'section_brand.dart';
import 'section_name_price.dart';

class SectionNamePriceBrand extends StatelessWidget {
  const SectionNamePriceBrand({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: SectionNamePrice(productModel: productModel),
        ),
        Expanded(
          flex: 2,
          child: SectionBrand(productModel: productModel),
        ),
      ],
    );
  }
}
