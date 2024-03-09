import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/consts/data.dart';
import '../../view_model/change_size_cubit/change_size_cubit.dart';
import 'item_size.dart';

class SizesListView extends StatelessWidget {
  const SizesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeSizeCubit, ChangeSizeState>(
      builder: (context, state) {
        ChangeSizeCubit bloc = BlocProvider.of<ChangeSizeCubit>(
          context,
        );
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ItemSizeMaterial(
              onTap: () => bloc.changeSize(index),
              value: sizes[index],
              isActive: bloc.index == index,
            );
          },
          itemCount: sizes.length,
        );
      },
    );
  }
}
