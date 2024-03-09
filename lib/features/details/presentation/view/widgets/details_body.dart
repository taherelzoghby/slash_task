import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/consts/style.dart';

import 'section_color.dart';
import 'section_name_price_brand.dart';
import 'swiper_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        SwiperImages(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        SectionNamePriceBrand(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        SectionColor(),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
      ],
    );
  }
}
