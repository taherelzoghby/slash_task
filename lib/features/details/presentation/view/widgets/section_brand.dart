import 'package:flutter/material.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import '../../../../../core/consts/style.dart';

class SectionBrand extends StatelessWidget {
  const SectionBrand({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        CircleAvatar(
          radius: size.height * .04,
          backgroundColor: AppConsts.white,
          backgroundImage: NetworkImage(productModel.brandImage!),
          onBackgroundImageError: (v, c) => const Icon(
            Icons.error,
            color: AppConsts.backGroundColor,
          ),
        ),
        SizedBox(height: size.height * .01),
        Text(
          productModel.brandName!,
          style: AppConsts.style17w600,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
