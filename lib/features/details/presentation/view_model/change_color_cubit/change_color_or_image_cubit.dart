import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_color_or_image_state.dart';

class ChangeColorOrImageCubit extends Cubit<ChangeColorOrImageState> {
  ChangeColorOrImageCubit() : super(ChangeColorOrImageInitial());
  int ind = 0;

  changeColor(int index) {
    ind = index;
    emit(ChangeColorState());
  }
}
