import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({
    super.key,
    required this.color,
    required this.isActive,
  });

  final String color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    int value = int.parse('${StringsEn.perfixColor}$color');
    return Center(
      child: Padding(
        padding: AppConsts.padd4h,
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
    );
  }
}
