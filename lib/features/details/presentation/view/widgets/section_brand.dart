import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/data.dart';
import 'package:slash_task/core/consts/style.dart';

class SectionBrand extends StatelessWidget {
  const SectionBrand({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        CircleAvatar(
          radius: size.height * .04,
          backgroundColor: AppConsts.white,
          foregroundImage: NetworkImage(images[0]),
        ),
        SizedBox(height: size.height *.01),
        Text(
          'Libra sports',
          style: AppConsts.style17w600,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
