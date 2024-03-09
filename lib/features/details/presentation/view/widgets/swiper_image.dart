import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:slash_task/core/consts/style.dart';
import '../../../../../core/consts/data.dart';
import 'custom_image_on_tap.dart';

class SwiperImages extends StatelessWidget {
  const SwiperImages({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return AspectRatio(
      aspectRatio: AppConsts.aspect16on14,
      child: Swiper(
        layout: SwiperLayout.CUSTOM,
        customLayoutOption: CustomLayoutOption(
          startIndex: 0,
          stateCount: 3,
        )
          ..addRotate(AppConsts.rotateSwiper)
          ..addTranslate(AppConsts.translateOffSet),
        itemWidth: size.width * .8,
        itemHeight: size.height * .35,
        itemBuilder: (context, index) {
          return CustomImageOnTap(image: items[index]);
        },
        itemCount: items.length,
      ),
    );
  }
}
