import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit() : super(GetProductInitial());
  getProduct(int id){

  }
}
