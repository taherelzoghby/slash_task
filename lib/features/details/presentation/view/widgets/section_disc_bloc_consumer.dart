import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/arrow_cubit/arrow_disc_cubit.dart';

import '../../../../../core/consts/style.dart';

class SectionDiscBlocConsumer extends StatefulWidget {
  const SectionDiscBlocConsumer({
    super.key,
  });

  @override
  State<SectionDiscBlocConsumer> createState() =>
      _SectionDiscBlocConsumerState();
}

class _SectionDiscBlocConsumerState extends State<SectionDiscBlocConsumer> {
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
                "delivered as it's a pre-order product.\n\nProduct may vary a little as it's a handmade product and each piece is a unique one.",
                style: AppConsts.style17w600.copyWith(
                  fontSize: 14,
                ),
              )
            : Container();
      },
    );
  }
}
