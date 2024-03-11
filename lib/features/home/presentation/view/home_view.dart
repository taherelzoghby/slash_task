import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/view_model/get_products_cubit/get_products_cubit.dart';
import '../../../../core/consts/strings.dart';
import '../../../../core/consts/style.dart';

import 'widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<GetProductsCubit>(context).getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConsts.backGroundColor,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          StringsEn.slashAppBar,
          style: AppConsts.style28w600,
        ),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
