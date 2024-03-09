import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/consts/style.dart';

import 'description_bar.dart';
import 'section_disc_bloc_consumer.dart';

class SectionDescription extends StatelessWidget {
  const SectionDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Container(
        decoration: BoxDecoration(
          color: AppConsts.greyBlackDarkColor,
          borderRadius: AppConsts.radius15,
        ),
        child:  const Padding(
          padding: AppConsts.allPadding8,
          child: Column(
            children: [
              DescriptionBar(),
              SectionDiscBlocConsumer(),
            ],
          ),
        ),
      ),
    );
  }
}
