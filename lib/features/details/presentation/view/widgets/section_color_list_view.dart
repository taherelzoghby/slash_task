
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

import 'colors_list_view.dart';

class SectionColorListView extends StatelessWidget {
  const SectionColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: AppConsts.aspect16on2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ColorsListView(),
            ),
          ),
        ],
      ),
    );
  }
}
