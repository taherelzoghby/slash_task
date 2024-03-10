import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/widgets/error_widget.dart';
import 'package:slash_task/core/widgets/loading_widget.dart';
import 'package:slash_task/features/details/presentation/view_model/get_images_swiper/get_images_swiper_cubit.dart';

import 'swiper_images.dart';

class BlocBuilderSwiperImages extends StatelessWidget {
  const BlocBuilderSwiperImages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetImagesSwiperCubit, GetImagesSwiperState>(
      builder: (context, state) {
        if (state is GetImagesSwiperLoaded) {
          List<String?> images = state.images;
          return SwiperImages(images: images);
        } else if (state is GetImagesSwiperLoading) {
          return const LoadingWidget();
        } else {
          return const ErrorWidg(message: StringsEn.someThingError);
        }
      },
    );
  }
}
