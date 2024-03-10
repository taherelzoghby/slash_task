
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

import 'rest_of_details_page.dart';
import 'swiper_image.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //images
        SwiperImages(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //rest of page
        RestOfDetailsPage(),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
      ],
    );
  }
}
