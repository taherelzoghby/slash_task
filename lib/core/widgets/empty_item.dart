import 'package:flutter/material.dart';

import '../consts/style.dart';
import 'empty_component.dart';

class EmptyItem extends StatelessWidget {
  const EmptyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppConsts.padding10h8v,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: ClipRRect(child: EmptyComponent()),
          ),
          Spacer(flex: 1),
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 4, child: EmptyComponent()),
                Spacer(flex: 1),
                Expanded(child: EmptyComponent()),
              ],
            ),
          ),
          Spacer(flex: 1),
          Expanded(child: EmptyComponent()),
        ],
      ),
    );
  }
}
