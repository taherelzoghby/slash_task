
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/helper/handle_image.dart';

class ItemImageIndicator extends StatelessWidget {
  const ItemImageIndicator({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.padd4h,
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: AppConsts.white,
          borderRadius: AppConsts.radius8,
          boxShadow: AppConsts.imageShadow,
        ),
        child: ClipRRect(
          borderRadius: AppConsts.radius8,
          child: HandleImageWidget(image: image),
        ),
      ),
    );
  }
}
