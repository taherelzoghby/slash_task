
import 'package:flutter/material.dart';

import 'section_images_indicator.dart';
import 'section_swiper.dart';

class SwiperImages extends StatelessWidget {
  const SwiperImages({
    super.key,
    required this.images,
  });

  final List<String?> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionSwiper(listOfImages: images),
        SectionImagesIndicatorListView(images: images),
      ],
    );
  }
}
