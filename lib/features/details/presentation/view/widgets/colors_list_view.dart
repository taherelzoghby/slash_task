import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/consts/data.dart';
import '../../../../../core/consts/style.dart';
import 'item_color.dart';
import '../../view_model/change_color_cubit/change_color_or_image_cubit.dart';

import 'item_image_indicator.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeColorOrImageCubit, ChangeColorOrImageState>(
      builder: (context, state) {
        ChangeColorOrImageCubit bloc = BlocProvider.of<ChangeColorOrImageCubit>(
          context,
        );
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ItemColor(
              onTap: () => bloc.changeColor(index),
              color: colors[index],
              isActive: bloc.ind == index,
            );
          },
          itemCount: colors.length,
        );
      },
    );
  }
}
