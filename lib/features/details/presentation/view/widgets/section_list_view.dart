import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

class SectionListView extends StatelessWidget {
  const SectionListView({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConsts.aspect16on2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(child: widget),
          ),
        ],
      ),
    );
  }
}
