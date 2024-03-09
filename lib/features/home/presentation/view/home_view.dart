import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/strings.dart';
import 'package:slash_task/core/consts/style.dart';

import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConsts.backGroundColor,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          StringsEn.slashAppBar,
          style: AppConsts.style28,
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
