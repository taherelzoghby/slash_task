import 'package:flutter/material.dart';

import '../consts/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.background = AppConsts.buttonColor,
    this.isBorder = false,
  });

  final String text;
  final Color background;
  final bool isBorder;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppConsts.radius25,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: AppConsts.radius25,
          color: background,
          boxShadow: AppConsts.buttonShadow,
        ),
        child: Center(
          child: Text(
            text,
            style: AppConsts.style17w600.copyWith(
              color: AppConsts.backGroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
