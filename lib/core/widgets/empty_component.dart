
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

class EmptyComponent extends StatelessWidget {
  const EmptyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppConsts.radius25,
        color: AppConsts.greyBlackLightColor.withOpacity(.3),
      ),
    );
  }
}
