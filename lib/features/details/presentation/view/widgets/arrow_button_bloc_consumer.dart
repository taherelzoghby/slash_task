import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/arrow_cubit/arrow_disc_cubit.dart';

class ArrowButtonBlocConsumer extends StatefulWidget {
  const ArrowButtonBlocConsumer({super.key});

  @override
  State<ArrowButtonBlocConsumer> createState() =>
      _ArrowButtonBlocConsumerState();
}

class _ArrowButtonBlocConsumerState extends State<ArrowButtonBlocConsumer> {
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
        ArrowDiscCubit bloc = BlocProvider.of<ArrowDiscCubit>(context);
        return IconButton(
          onPressed: () => bloc.changeArrow(arrowDown),
          icon: Icon(
            arrowDown ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          ),
        );
      },
    );
  }
}
