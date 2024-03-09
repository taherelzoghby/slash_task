import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

import 'images_bloc_builder_listview.dart';

class SectionImagesIndicatorListView extends StatelessWidget {
  const SectionImagesIndicatorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: AppConsts.aspect16on2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ImagesBlocBuilderListView(),
            ),
          ),
        ],
      ),
    );
  }
}
