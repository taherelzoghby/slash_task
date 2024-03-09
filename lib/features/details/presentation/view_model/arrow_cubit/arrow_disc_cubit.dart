import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'arrow_disc_state.dart';

class ArrowDiscCubit extends Cubit<ArrowDiscState> {
  ArrowDiscCubit() : super(ArrowDiscInitial());

  changeArrow(bool arrowDown) {
    arrowDown=!arrowDown;
    emit(ArrowState(arrowDown: arrowDown));
  }
}
