
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';
import 'package:slash_task/core/widgets/customButton.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: AspectRatio(
        aspectRatio: AppConsts.aspectRatioButtonAuth,
        child: CustomButton(
          text: StringsEn.addToCart,
          onTap: () {},
        ),
      ),
    );
  }
}
