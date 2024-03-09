import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_size_state.dart';

class ChangeSizeCubit extends Cubit<ChangeSizeState> {
  ChangeSizeCubit() : super(ChangeSizeInitial());
  int index = 0;

  changeSize(int index) {
    emit(ChangeSizState());
  }
}
