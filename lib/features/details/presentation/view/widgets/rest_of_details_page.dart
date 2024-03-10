import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/features/details/presentation/view_model/get_product_cubit/get_product_cubit.dart';
import 'package:slash_task/features/home/presentation/view_model/get_products_cubit/get_products_cubit.dart';
import '../../../../../core/consts/strings.dart';
import '../../../../../core/consts/style.dart';

import '../../../../../core/helper/filter_property_available_properties.dart';
import 'bloc_builder_colors_list_view.dart';
import 'bloc_builder_get_product_materials_list_view.dart';
import 'bloc_builder_section_colors_sizes_materials.dart';
import 'section_button.dart';
import 'section_description.dart';
import 'bloc_builder_section_name_price_brand.dart';
import 'section_select_body.dart';
import 'bloc_builder_sizes_list_view.dart';

class RestOfDetailsPage extends StatelessWidget {
  const RestOfDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        children: [
          //info(name , price ,brand)
          BlocBuilderSectionNamePriceBrand(),
          AspectRatio(aspectRatio: AppConsts.aspect16on1),

          BlocBuilderSectionColorsSizesMaterials(),
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
