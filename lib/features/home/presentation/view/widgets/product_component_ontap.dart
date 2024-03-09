import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/consts/routesPage.dart';
import '../../../../../core/consts/style.dart';

import 'product_component.dart';

class ProductComponentOnTap extends StatelessWidget {
  const ProductComponentOnTap({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(detailsPath),
      borderRadius: AppConsts.radius25,
      child: const ProductComponent(),
    );
  }
}
