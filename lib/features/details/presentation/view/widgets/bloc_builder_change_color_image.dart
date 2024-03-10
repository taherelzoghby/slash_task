import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/models/product_model/product_variation.dart';
import 'package:slash_task/features/details/presentation/view_model/change_color_cubit/change_color_or_image_cubit.dart';
import 'package:slash_task/features/details/presentation/view_model/get_images_swiper/get_images_swiper_cubit.dart';

import 'item_image_indicator.dart';

class BlocBuilderChangeColorOrImage extends StatelessWidget {
  const BlocBuilderChangeColorOrImage({
    super.key,
    required this.variations,
  });

  final List<ProductVariation>? variations;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeColorOrImageCubit, ChangeColorOrImageState>(
      builder: (context, state) {
        ChangeColorOrImageCubit bloc = BlocProvider.of<ChangeColorOrImageCubit>(
          context,
        );
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ItemImageIndicator(
              onTap: () {
                bloc.changeColor(index);
                BlocProvider.of<GetImagesSwiperCubit>(context).getImages(
                  productVarientImage: variations![index].productVarientImages!,
                );
              },
              image: variations![index].productVarientImages![0].imagePath!,
              isActive: bloc.ind == index,
            );
            // return ItemColor(
            //   onTap: () => bloc.changeColor(index),
            //   color: colors[index],
            //   isActive: bloc.ind == index,
            // );
          },
          itemCount: variations!.length,
        );
      },
    );
  }
}
