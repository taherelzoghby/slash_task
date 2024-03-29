import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/core/services/hive_db.dart';
import 'package:slash_task/core/services/service_locator.dart';
import 'core/consts/strings.dart';
import 'core/consts/style.dart';

import 'core/consts/routesPage.dart';
import 'core/services/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await HiveDb.init();
  Bloc.observer = Observe();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: StringsEn.slash,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppConsts.backGroundColor,
      ),
    );
  }
}
