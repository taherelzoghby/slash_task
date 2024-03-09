import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';

import 'colors_list_view.dart';
import 'materials_list_view.dart';
import 'section_description.dart';
import 'section_select_body.dart';
import 'section_name_price_brand.dart';
import 'sizes_list_view.dart';
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
        //info(name , price ,brand)
        SectionNamePriceBrand(),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //colors
        SectionSelectBody(
          label: StringsEn.selectColor,
          body: ColorsListView(),
        ),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //sizes
        SectionSelectBody(
          label: StringsEn.selectSize,
          body: SizesListView(),
        ),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //materials
        SectionSelectBody(
          label: StringsEn.selectMaterial,
          body: MaterialsListView(),
        ),
        AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //description
        SectionDescription(),
        AspectRatio(aspectRatio: AppConsts.aspect16on3),
      ],
    );
  }
}
