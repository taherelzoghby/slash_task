import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/helper/handle_image.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
    required this.image,
    this.height,
    this.width,
  });

  final String image;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppConsts.white,
        borderRadius: AppConsts.radius25,
        boxShadow: AppConsts.imageShadow,
      ),
      child: ClipRRect(
        borderRadius: AppConsts.radius25,
        child: HandleImageWidget(image: image),
      ),
    );
  }
}
