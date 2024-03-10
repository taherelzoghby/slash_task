import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:slash_task/core/helper/custom_snack.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/widgets/empty_item.dart';
import 'package:slash_task/core/widgets/error_widget.dart';
import 'package:slash_task/core/widgets/fade_animation_widget.dart';
import 'package:slash_task/core/widgets/fading_grid_view.dart';
import 'package:slash_task/features/home/presentation/view_model/get_products_cubit/get_products_cubit.dart';

import '../../../../../core/consts/style.dart';
import 'product_component_ontap.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProductsCubit, GetProductsState>(
      listener: (context, state) {
        if (state is GetProductsErrorPagination) {
          showSnack(
            context,
            message: state.message,
            background: AppConsts.red,
          );
        }
      },
      builder: (context, state) {
        if (state is GetProductsLoaded) {
          List<ProductModel> products = state.products;
          return AnimationLimiter(
            child: GridView.builder(
              gridDelegate: AppConsts.gridStyle,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 575),
                  columnCount: 2,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: ProductComponentOnTap(
                        product: products[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is GetProductsError) {
          return ErrorWidg(message: state.message);
        } else {
          return const FadingAnimation(
            child: FadingGridView(
              scrollDirc: Axis.vertical,
              widget: EmptyItem(),
            ),
          );
        }
      },
    );
  }
}
