import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import '../../../../../core/consts/routesPage.dart';
import '../../../../../core/consts/style.dart';

import 'product_component.dart';

class ProductComponentOnTap extends StatelessWidget {
  const ProductComponentOnTap({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(
        detailsPath,
        extra: product.id,
      ),
      borderRadius: AppConsts.radius25,
      child: ProductComponent(productModel: product),
    );
  }
}
