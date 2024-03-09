import 'package:flutter/material.dart';
import '../../../../../core/consts/strings.dart';
import '../../../../../core/consts/style.dart';
import '../../../../../core/widgets/customButton.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConsts.aspectRatioButtonAuth,
      child: CustomButton(
        text: StringsEn.addToCart,
        onTap: () {},
      ),
    );
  }
}
