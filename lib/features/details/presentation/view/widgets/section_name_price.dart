
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

class SectionNamePrice extends StatelessWidget {
  const SectionNamePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Health Sports Bra',
          style: AppConsts.style17w600.copyWith(
            fontSize: 22,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height *.01),
        const Text(
          'EGP 354',
          style: AppConsts.style17w600,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
