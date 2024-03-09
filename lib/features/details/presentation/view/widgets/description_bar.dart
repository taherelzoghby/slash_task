import 'package:flutter/material.dart';
import '../../../../../core/consts/strings.dart';
import '../../../../../core/consts/style.dart';

import 'arrow_button_bloc_consumer.dart';

class DescriptionBar extends StatelessWidget {
  const DescriptionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          StringsEn.description,
          style: AppConsts.style17w600,
        ),
        ArrowButtonBlocConsumer(),
      ],
    );
  }
}
