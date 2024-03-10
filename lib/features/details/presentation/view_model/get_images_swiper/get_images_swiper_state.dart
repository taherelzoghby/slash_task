part of 'get_images_swiper_cubit.dart';

@immutable
abstract class GetImagesSwiperState {}

class GetImagesSwiperInitial extends GetImagesSwiperState {}

class GetImagesSwiperLoading extends GetImagesSwiperState {}

class GetImagesSwiperLoaded extends GetImagesSwiperState {
  final List<String?> images;

  GetImagesSwiperLoaded({required this.images});
}

class GetImagesSwiperFailure extends GetImagesSwiperState {}
