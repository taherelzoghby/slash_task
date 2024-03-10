part of 'get_colors_or_image_cubit.dart';

@immutable
abstract class GetColorsOrImageState {}

class GetColorsOrImageInitial extends GetColorsOrImageState {}

class GetColorsLoading extends GetColorsOrImageState {}

class GetColorsLoaded extends GetColorsOrImageState {
  final List<ProductVariation>? variations;

  GetColorsLoaded({required this.variations});
}

class GetColorsFailure extends GetColorsOrImageState {}
