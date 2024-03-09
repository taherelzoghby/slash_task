
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

import 'section_brand.dart';
import 'section_name_price.dart';

class SectionNamePriceBrand extends StatelessWidget {
  const SectionNamePriceBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.mainPadding,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: SectionNamePrice(),
          ),
          Expanded(
            flex: 2,
            child: SectionBrand(),
          ),
        ],
      ),
    );
  }
}
