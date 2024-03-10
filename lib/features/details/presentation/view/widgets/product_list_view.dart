import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';
import 'bloc_provider_swiper_image.dart';
import 'rest_of_details_page.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //images
        BlocProviderSwiperImages(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //rest of page
        RestOfDetailsPage(),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
      ],
    );
  }
}
