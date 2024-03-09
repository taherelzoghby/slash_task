
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/core/consts/style.dart';

import '../../../../../core/consts/routesPage.dart';
import '../../../../home/presentation/view/widgets/custom_product_image.dart';

class CustomImageOnTap extends StatelessWidget {
  const CustomImageOnTap({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(
        photoViewPath,
        extra: image,
      ),
      child: Padding(
        padding: AppConsts.allPadding8,
        child: CustomProductImage(image: image),
      ),
    );
  }
}
