import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/consts/style.dart';
import 'rest_of_details_page.dart';
import 'swiper_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //images
        SwiperImages(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //rest of page
        RestOfDetailsPage(),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
      ],
    );
  }
}
