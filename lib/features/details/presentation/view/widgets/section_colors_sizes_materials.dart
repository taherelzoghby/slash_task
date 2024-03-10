import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/helper/filter_property_available_properties.dart';

import '../../../../../core/models/product_model/product_model.dart';
import 'bloc_builder_colors_list_view.dart';
import 'bloc_builder_get_product_materials_list_view.dart';
import 'bloc_builder_sizes_list_view.dart';
import 'section_description.dart';
import 'section_select_body.dart';

class SectionColorsSizesMaterials extends StatelessWidget {
  const SectionColorsSizesMaterials({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //colors
        product.variations!.isEmpty
            ? Container()
            : const SectionSelectBody(
                label: StringsEn.selectColor,
                body: BlocBuilderColorsListView(),
              ),
        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //sizes
        product.availableProperties!.isEmpty ||
                filterProperty(
                  productModel: product,
                  property: StringsEn.size,
                ).isEmpty
            ? Container()
            : const SectionSelectBody(
                label: StringsEn.selectSize,
                body: BlocBuilderSizesListView(),
              ),

        const AspectRatio(aspectRatio: AppConsts.aspect16on1),
        //materials
        product.availableProperties!.isEmpty ||
                filterProperty(
                  productModel: product,
                  property: StringsEn.materials,
                ).isEmpty
            ? Container()
            : const SectionSelectBody(
                label: StringsEn.selectMaterial,
                body: BlocBuilderGetProductMaterialsListView(),
              ),

        const AspectRatio(aspectRatio: AppConsts.aspect16on1),

      ],
    );
  }
}
