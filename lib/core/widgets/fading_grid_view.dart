import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../consts/style.dart';

class FadingGridView extends StatelessWidget {
  const FadingGridView({
    super.key,
    required this.scrollDirc,
    required this.widget,
    this.isNeverScroll = false,
  });

  final Widget widget;

  final Axis scrollDirc;
  final bool isNeverScroll;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: scrollDirc,
        gridDelegate: AppConsts.gridStyle,
        itemCount: 5,
        physics: isNeverScroll
            ? const NeverScrollableScrollPhysics()
            : const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: AppConsts.allPadding8,
            child: widget,
          );
        },
      ),
    );
  }
}
