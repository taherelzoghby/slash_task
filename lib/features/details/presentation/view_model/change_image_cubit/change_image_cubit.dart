import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_image_state.dart';

class ChangeImageCubit extends Cubit<ChangeImageState> {
  ChangeImageCubit() : super(ChangeImageInitial());

  changeIndex({required int value}) {
    emit(Changed(value: value));
  }
}
