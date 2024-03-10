import 'package:flutter/material.dart';
import '../../../../../core/consts/style.dart';

class ItemSizeMaterial extends StatelessWidget {
  const ItemSizeMaterial({
    super.key,
    required this.isActive,
    required this.value,
    this.onTap,
  });

  final bool isActive;
  final String? value;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.padd4h,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppConsts.radius8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: AppConsts.radius8,
            color:
                isActive ? AppConsts.buttonColor : AppConsts.greyBlackDarkColor,
          ),
          child: Padding(
            padding: AppConsts.padding5h10v,
            child: Text(
              value!,
              style: AppConsts.style17w600.copyWith(
                color: isActive ? AppConsts.backGroundColor : AppConsts.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
