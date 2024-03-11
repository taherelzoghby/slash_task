import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/consts/routesPage.dart';
import '../../../../core/consts/strings.dart';
import 'widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToBoarding();
    super.initState();
  }

  ///navigate to home
  navigateToBoarding() {
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).pushReplacement(
        homePath,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SplashBody(),
      ),
    );
  }
}
