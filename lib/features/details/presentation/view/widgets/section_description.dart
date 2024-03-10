import 'package:flutter/material.dart';
import '../../../../../core/consts/style.dart';

import 'description_bar.dart';
import 'section_disc_bloc_builder.dart';

class SectionDescription extends StatelessWidget {
  const SectionDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConsts.greyBlackDarkColor,
        borderRadius: AppConsts.radius15,
      ),
      child: const Padding(
        padding: AppConsts.allPadding8,
        child: Column(
          children: [
            DescriptionBar(),
            SectionDiscBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
