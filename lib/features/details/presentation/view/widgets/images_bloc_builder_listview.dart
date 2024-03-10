import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/change_image_cubit/change_image_cubit.dart';
import 'item_image_indicator.dart';

class ImagesBlocBuilderListView extends StatelessWidget {
  const ImagesBlocBuilderListView({super.key, required this.images});
  final List<String?> images;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeImageCubit, ChangeImageState>(
      builder: (context, state) {
        ChangeImageCubit bloc = BlocProvider.of<ChangeImageCubit>(context);
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ItemImageIndicator(
              onTap: () => bloc.changeIndex(value: index),
              isActive: index == bloc.index,
              image: images[index],
            );
          },
          itemCount: images.length,
        );
      },
    );
  }
}
