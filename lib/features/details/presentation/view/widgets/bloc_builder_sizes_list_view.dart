import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/helper/filter_property_available_properties.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/models/product_model/values.dart';
import 'package:slash_task/core/widgets/loading_widget.dart';
import 'package:slash_task/features/details/presentation/view_model/get_product_cubit/get_product_cubit.dart';
import 'bloc_builder_change_sizes_list_view.dart';

class BlocBuilderSizesListView extends StatelessWidget {
  const BlocBuilderSizesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductLoaded) {
          ProductModel productModel = state.productModel;
          //filter sizes from available properties
          List<Values>? sizes = getValues(
            productModel: productModel,
            property: StringsEn.size,
          );
          return BlocBuilderChangeSizesListView(
            sizes: sizes,
          );
        } else if (state is GetProductLoading) {
          return const LoadingWidget();
        } else {
          return Container();
        }
      },
    );
  }
}
