import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/core/models/product_model/product_varient_image.dart';

part 'get_images_swiper_state.dart';

class GetImagesSwiperCubit extends Cubit<GetImagesSwiperState> {
  GetImagesSwiperCubit() : super(GetImagesSwiperInitial());

  getImages({
    required List<ProductVarientImage> productVarientImage,
  }) {
    try {
      emit(GetImagesSwiperLoading());
      List<String?> images = productVarientImage
          .map(
            (e) => e.imagePath,
          )
          .toList();
      emit(GetImagesSwiperLoaded(images: images));
    } catch (e) {
      emit(GetImagesSwiperFailure());
    }
  }
}
