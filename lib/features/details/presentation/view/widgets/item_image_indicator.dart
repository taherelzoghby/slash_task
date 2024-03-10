import 'package:flutter/material.dart';
import '../../../../../core/consts/style.dart';
import '../../../../../core/helper/handle_image.dart';

class ItemImageIndicator extends StatelessWidget {
  const ItemImageIndicator({
    super.key,
    required this.image,
    required this.isActive,
    this.onTap,
  });

  final String? image;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.padd4h,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppConsts.radius8,
        child: Container(
          width: 50,
          decoration: BoxDecoration(
            color: AppConsts.white,
            borderRadius: AppConsts.radius8,
            boxShadow: AppConsts.imageShadow,
            border: Border.all(
              color: isActive ? AppConsts.success : AppConsts.white,
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: AppConsts.radius8,
            child: HandleImageWidget(image: image??''),
          ),
        ),
      ),
    );
  }
}
