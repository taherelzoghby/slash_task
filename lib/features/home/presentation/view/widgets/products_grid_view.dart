import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/features/home/presentation/view_model/get_products_cubit/get_products_cubit.dart';

import 'product_component_ontap.dart';

class ProductsGridView extends StatefulWidget {
  const ProductsGridView({
    super.key,
    required this.listOfProducts,
  });

  final List<ProductModel> listOfProducts;

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  late ScrollController scrollController;
  int currentPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() => handleScroll());
    super.initState();
  }

  handleScroll() async {
    double maxScroll = scrollController.position.maxScrollExtent;
    double currentScroll = scrollController.position.pixels;
    if (currentScroll >= .7 * maxScroll) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<GetProductsCubit>(context).getProducts(
          pagNum: currentPage++,
        );
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        controller: scrollController,
        gridDelegate: AppConsts.gridStyle,
        itemCount: widget.listOfProducts.length,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: const Duration(milliseconds: 575),
            columnCount: 2,
            child: ScaleAnimation(
              child: FadeInAnimation(
                child: ProductComponentOnTap(
                  product: widget.listOfProducts[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
