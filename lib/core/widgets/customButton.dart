import 'package:flutter/material.dart';

import '../consts/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.background = AppConsts.buttonColor,
  });

  final String text;
  final Color background;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(background),
        shadowColor: MaterialStateProperty.all(AppConsts.white),
      ),
      child: Text(
        text,
        style: AppConsts.style17w600.copyWith(
          color: AppConsts.backGroundColor,
        ),
      ),
    );
  }
}
