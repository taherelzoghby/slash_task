import 'package:bloc/bloc.dart';

part 'change_material_state.dart';

class ChangeMaterialCubit extends Cubit<ChangeMaterialState> {
  ChangeMaterialCubit() : super(ChangeMaterialInitial());
  int index = 0;

  changeMaterial(int ind) {
    index = ind;
    emit(ChangeMaterState());
  }
}
