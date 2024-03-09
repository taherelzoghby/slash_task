import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'section_images_indicator.dart';
import 'section_swiper.dart';

class SwiperImages extends StatelessWidget {
  const SwiperImages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionSwiper(),
        SectionImagesIndicatorListView(),
      ],
    );
  }
}
