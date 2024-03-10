import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import '../../../../../core/consts/style.dart';

class SectionNamePrice extends StatelessWidget {
  const SectionNamePrice({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.name!,
          style: AppConsts.style17w600.copyWith(
            fontSize: 22,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        Text(
          '${StringsEn.egp} ${productModel.variations![0].price}',
          style: AppConsts.style17w600,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
