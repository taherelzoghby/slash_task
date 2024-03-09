import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

part 'change_image_state.dart';

class ChangeImageCubit extends Cubit<ChangeImageState> {
  ChangeImageCubit() : super(ChangeImageInitial());
  SwiperController controller = SwiperController();
  int index = 0;

  changeIndex({required int value}) {
    index = value;
    controller.move(value);
    emit(Changed(value: index));
  }
}
