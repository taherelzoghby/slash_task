import 'package:flutter/material.dart';
import '../../../../../core/consts/strings.dart';
import '../../../../../core/consts/style.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({
    super.key,
    required this.color,
    required this.isActive,
    this.onTap,
  });

  final String color;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    int value = int.parse('${StringsEn.perfixColor}$color');
    return Padding(
      padding: AppConsts.padd4h,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppConsts.radius25,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: AppConsts.radius40,
              border: Border.all(
                color: isActive ? AppConsts.success : AppConsts.backGroundColor,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Color(value),
            ),
          ),
        ),
      ),
    );
  }
}
