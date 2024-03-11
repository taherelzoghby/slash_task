import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/assets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppAssets.logo),
    );
  }
}
