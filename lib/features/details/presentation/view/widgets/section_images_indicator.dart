import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/consts/style.dart';

import 'images_bloc_builder_listview.dart';

class SectionImagesIndicatorListView extends StatelessWidget {
  const SectionImagesIndicatorListView({super.key, required this.images});

  final List<String?> images;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConsts.aspect16on2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ImagesBlocBuilderListView(
                images: images,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
