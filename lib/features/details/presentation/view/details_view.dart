import 'package:flutter/material.dart';
import '../../../../core/consts/strings.dart';
import '../../../../core/consts/style.dart';
import 'widgets/details_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConsts.backGroundColor,
        title: Text(
          StringsEn.productDetails,
          style: AppConsts.style28w600.copyWith(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: DetailsBody(),
      ),
    );
  }
}
