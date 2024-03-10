import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';
import 'package:slash_task/core/models/product_model/product_variation.dart';
import 'package:slash_task/features/details/presentation/view_model/get_product_cubit/get_product_cubit.dart';

part 'get_colors_or_image_state.dart';

class GetColorsOrImageCubit extends Cubit<GetColorsOrImageState> {
  GetColorsOrImageCubit() : super(GetColorsOrImageInitial());
  getColors(BuildContext context) {
    try {
      emit(GetColorsLoading());
      ProductModel product = BlocProvider.of<GetProductCubit>(
        context,
      ).productModel;
      List<ProductVariation>? variations = product.variations;
      emit(GetColorsLoaded(variations: variations));
    } catch (e) {
      emit(GetColorsFailure());
    }
  }
}
