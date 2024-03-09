import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:slash_task/core/consts/style.dart';

import 'product_component.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return const FadeAnimation(
    //   millSeconds: 300,
    //   child: FadingGridView(
    //     scrollDirc: Axis.vertical,
    //     widget: EmptyItem(),
    //   ),
    // );
    return AnimationLimiter(
      child: GridView.builder(
        gridDelegate: AppConsts.gridStyle,
        itemCount: 20,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: const Duration(milliseconds: 575),
            columnCount: 2,
            child: const ScaleAnimation(
              child: FadeInAnimation(
                child: ProductComponent(),
              ),
            ),
          );
        },
      ),
    );
  }
}
