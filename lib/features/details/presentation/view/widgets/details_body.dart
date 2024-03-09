import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:slash_task/core/consts/data.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/features/home/presentation/view/widgets/custom_product_image.dart';

import 'swiper_image.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({super.key});

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
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
