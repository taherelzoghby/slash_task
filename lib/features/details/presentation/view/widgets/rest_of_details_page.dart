import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';

import 'colors_list_view.dart';
import 'materials_list_view.dart';
import 'section_button.dart';
import 'section_description.dart';
import 'section_name_price_brand.dart';
import 'section_select_body.dart';
import 'sizes_list_view.dart';

class RestOfDetailsPage extends StatelessWidget {
  const RestOfDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
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
          AspectRatio(aspectRatio: AppConsts.aspect16on1),
          //add to cart
          SectionButton(),
        ],
      ),
    );
  }
}
