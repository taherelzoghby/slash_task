import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/details/presentation/view/widgets/swiper_image_bloc_builder.dart';
import 'package:slash_task/features/details/presentation/view_model/get_images_swiper/get_images_swiper_cubit.dart';
import 'package:slash_task/features/details/presentation/view_model/get_product_cubit/get_product_cubit.dart';

class BlocProviderSwiperImages extends StatefulWidget {
  const BlocProviderSwiperImages({super.key});

  @override
  State<BlocProviderSwiperImages> createState() =>
      _BlocProviderSwiperImagesState();
}

class _BlocProviderSwiperImagesState extends State<BlocProviderSwiperImages> {
  @override
  void initState() {
    BlocProvider.of<GetImagesSwiperCubit>(context).getImages(
      productVarientImage: BlocProvider.of<GetProductCubit>(context)
          .productModel
          .variations![0]
          .productVarientImages!,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const BlocBuilderSwiperImages();
  }
}
