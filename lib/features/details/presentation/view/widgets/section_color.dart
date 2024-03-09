import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';

import 'section_color_list_view.dart';

class SectionColor extends StatelessWidget {
  const SectionColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            StringsEn.selectColor,
            style: AppConsts.style17w600,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * .01),
          const SectionColorListView()
        ],
      ),
    );
  }
}
