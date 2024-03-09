import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

import 'swiper_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        SwiperImages(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
      ],
    );
  }
}
