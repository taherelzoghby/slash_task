import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/consts/style.dart';

import 'section_list_view.dart';

class SectionSelectBody extends StatelessWidget {
  const SectionSelectBody({
    super.key,
    required this.label,
    required this.body,
  });

  final String label;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConsts.mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppConsts.style17w600,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * .01),
          SectionListView(widget: body),
        ],
      ),
    );
  }
}
