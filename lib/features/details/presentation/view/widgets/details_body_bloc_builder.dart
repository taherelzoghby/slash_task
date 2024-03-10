import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/widgets/error_widget.dart';
import 'package:slash_task/core/widgets/loading_widget.dart';
import 'package:slash_task/features/details/presentation/view_model/get_product_cubit/get_product_cubit.dart';

import 'product_list_view.dart';

class DetailsBodyBlocBuilder extends StatelessWidget {
  const DetailsBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductLoaded) {
          ProductModel product = state.productModel;
          return ProductListView(
            productModel: product,
          );
        } else if (state is GetProductFailure) {
          return ErrorWidg(message: state.message);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
