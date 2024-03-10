import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/helper/filter_property_available_properties.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

import '../../../../../core/models/product_model/values.dart';
import '../../../../../core/widgets/loading_widget.dart';
import '../../view_model/get_product_cubit/get_product_cubit.dart';
import 'bloc_builder_materials_list_view.dart';

class BlocBuilderGetProductMaterialsListView extends StatelessWidget {
  const BlocBuilderGetProductMaterialsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductLoaded) {
          ProductModel productModel = state.productModel;
          //filter materials from available properties
          List<Values>? materials = getValues(
            productModel: productModel,
            property: StringsEn.materials,
          );
          return BlocBuilderMaterialsListView(materials: materials);
        } else if (state is GetProductLoading) {
          return const LoadingWidget();
        } else {
          return Container();
        }
      },
    );
  }
}
