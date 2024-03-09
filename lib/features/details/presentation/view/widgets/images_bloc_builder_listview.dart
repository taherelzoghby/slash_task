
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/features/details/presentation/view_model/change_image_cubit/change_image_cubit.dart';

import '../../../../../core/consts/data.dart';
import 'item_image_indicator.dart';

class ImagesBlocBuilderListView extends StatelessWidget {
  const ImagesBlocBuilderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeImageCubit, ChangeImageState>(
      builder: (context, state) {
        ChangeImageCubit bloc = BlocProvider.of<ChangeImageCubit>(context);
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => bloc.changeIndex(value: index),
              borderRadius: AppConsts.radius8,
              child: ItemImageIndicator(
                isActive: index == bloc.index,
                image: items[index],
              ),
            );
          },
          itemCount: items.length,
        );
      },
    );
  }
}
