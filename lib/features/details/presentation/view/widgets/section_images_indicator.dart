
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/data.dart';
import 'package:slash_task/core/consts/style.dart';

import 'item_image_indicator.dart';

class SectionImagesIndicator extends StatelessWidget {
  const SectionImagesIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConsts.aspect16on2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemImageIndicator(
                    image: items[index],
                  );
                },
                itemCount: items.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
