import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/data.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/features/details/presentation/view/widgets/item_color.dart';
import 'package:slash_task/features/details/presentation/view_model/change_color_cubit/change_color_or_image_cubit.dart';

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
            return InkWell(
              onTap: () => bloc.changeColor(index),
              borderRadius: AppConsts.radius25,
              child: ItemColor(
                color: colors[index],
                isActive: bloc.ind == index,
              ),
              // child: ItemImageIndicator(
              //   isActive: bloc.ind == index,
              //   image: images[index],
              // ),
            );
          },
          itemCount: colors.length,
        );
      },
    );
  }
}
