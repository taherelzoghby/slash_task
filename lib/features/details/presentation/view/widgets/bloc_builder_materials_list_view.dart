
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/models/product_model/values.dart';
import 'package:slash_task/features/details/presentation/view_model/change_material_cubit/change_material_cubit.dart';

import 'item_size.dart';

class BlocBuilderMaterialsListView extends StatelessWidget {
  const BlocBuilderMaterialsListView({
    super.key,
    required this.materials,
  });

  final List<Values>? materials;

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
              value: materials![index].value,
              isActive: bloc.index == index,
            );
          },
          itemCount: materials!.length,
        );
      },
    );
  }
}
