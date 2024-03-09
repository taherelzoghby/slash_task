

import 'package:go_router/go_router.dart';
import 'package:slash_task/features/home/presentation/view/home_view.dart';

import '../helper/custom_animation.dart';

const homePath = '/';
const detailsPath = '/';
final router = GoRouter(
  routes: [
    GoRoute(
      path: homePath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const HomeView(),
      ),
    ),
  ],
);
