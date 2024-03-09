import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/helper/handle_image.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppConsts.radius25,
      child: HandleImageWidget(image: image),
    );
  }
}
