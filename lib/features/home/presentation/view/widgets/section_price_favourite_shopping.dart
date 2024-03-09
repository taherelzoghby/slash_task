
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

class SectionPriceFavouriteShopping extends StatelessWidget {
  const SectionPriceFavouriteShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: Text(
            'EGP 1010',
            style: AppConsts.style17w600,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline_rounded,
              color: AppConsts.white,
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
      ],
    );
  }
}
