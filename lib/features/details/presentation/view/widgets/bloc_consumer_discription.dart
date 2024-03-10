import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/models/product_model/product_model.dart';

import '../../view_model/arrow_cubit/arrow_disc_cubit.dart';

class DiscriptionBlocConsumer extends StatefulWidget {
  const DiscriptionBlocConsumer({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  State<DiscriptionBlocConsumer> createState() =>
      _DiscriptionBlocConsumerState();
}

class _DiscriptionBlocConsumerState extends State<DiscriptionBlocConsumer> {
  bool arrowDown = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArrowDiscCubit, ArrowDiscState>(
      listener: (context, state) {
        if (state is ArrowState) {
          arrowDown = state.arrowDown;
        }
      },
      builder: (context, state) {
        return arrowDown
            ? Text(
                widget.productModel.description!,
                style: AppConsts.style17w600.copyWith(
                  fontSize: 14,
                ),
              )
            : Container();
      },
    );
  }
}
