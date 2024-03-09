import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

import 'custom_product_image.dart';
import 'section_name_product.dart';
import 'section_price_favourite_shopping.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.padding10h8v,
      child: Column(
        children: [
          CustomProductImage(
            image:
                'https://octopuscairo.com/cdn/shop/products/DSC04364-2MB_1024x1024.jpg?v=1661639844',
          ),
          SectionNameProduct(),
          SectionPriceFavouriteShopping(),
        ],
      ),
    );
  }
}
