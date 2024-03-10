import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/models/product_model/product_variation.dart';
import 'package:slash_task/core/widgets/loading_widget.dart';
import 'package:slash_task/features/details/presentation/view_model/get_colors_or_image_cubit/get_colors_or_image_cubit.dart';
import 'bloc_builder_change_color_image.dart';

class BlocBuilderColorsListView extends StatelessWidget {
  const BlocBuilderColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetColorsOrImageCubit, GetColorsOrImageState>(
      builder: (context, state) {
        if (state is GetColorsLoaded) {
          List<ProductVariation>? variations = state.variations;
          return BlocBuilderChangeColorOrImage(variations: variations);
        } else if (state is GetColorsLoading) {
          return const LoadingWidget();
        } else {
          return Container();
        }
      },
    );
  }
}
