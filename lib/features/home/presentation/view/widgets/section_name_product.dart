import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import '../../../../../core/consts/style.dart';

import 'custom_product_image.dart';

class SectionNameProduct extends StatelessWidget {
  const SectionNameProduct({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            product.name!,
            style: AppConsts.style17w600.copyWith(fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: CircleAvatar(
            backgroundColor: AppConsts.white,
            backgroundImage: NetworkImage(product.brands!.brandLogoImagePath!),
            onBackgroundImageError: (v, c) => const Icon(
              Icons.error,
              color: AppConsts.backGroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
