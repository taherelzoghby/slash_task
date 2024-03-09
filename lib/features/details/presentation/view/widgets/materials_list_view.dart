import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/consts/data.dart';
import 'package:slash_task/features/details/presentation/view_model/change_material_cubit/change_material_cubit.dart';
import 'item_size.dart';

class MaterialsListView extends StatelessWidget {
  const MaterialsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeMaterialCubit, ChangeMaterialState>(
      builder: (context, state) {
        ChangeMaterialCubit bloc = BlocProvider.of<ChangeMaterialCubit>(
          context,
        );
        return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ItemSizeMaterial(
              onTap: () => bloc.changeMaterial(index),
              value: materials[index],
              isActive: bloc.index == index,
            );
          },
          itemCount: materials.length,
        );
      },
    );
  }
}
