import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

import '../../../../../core/consts/style.dart';
import 'custom_product_image.dart';
import 'section_name_product.dart';
import 'section_price_favourite_shopping.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: AppConsts.padding10h8v,
      child: Column(
        children: [
          Expanded(
            flex: 50,
            child: CustomProductImage(
              width: size.width,
              image: productModel
                  .variations![0].productVarientImages![0].imagePath!,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 15,
            child: SectionNameProduct(product: productModel),
          ),
          Expanded(
            flex: 13,
            child: SectionPriceFavouriteShopping(
              product: productModel,
            ),
          ),
        ],
      ),
    );
  }
}
