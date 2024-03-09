import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_image_state.dart';

class ChangeImageCubit extends Cubit<ChangeImageState> {
  ChangeImageCubit() : super(ChangeImageInitial());
  int index = 0;

  changeIndex({required int value}) {
    index = value;
    emit(Changed(value: index));
  }
}
