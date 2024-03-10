import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import '../../../../../core/consts/style.dart';

class SectionPriceFavouriteShopping extends StatelessWidget {
  const SectionPriceFavouriteShopping({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Text(
            '${StringsEn.egp} ${product.productVariations![0].price}',
            style: AppConsts.style17w600,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          flex: 2,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline_rounded,
              color: AppConsts.white,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
      ],
    );
  }
}
