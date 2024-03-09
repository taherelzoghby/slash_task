import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/features/details/presentation/view/details_view.dart';
import 'package:slash_task/features/details/presentation/view_model/change_color_cubit/change_color_or_image_cubit.dart';
import 'package:slash_task/features/details/presentation/view_model/change_image_cubit/change_image_cubit.dart';
import 'package:slash_task/features/home/presentation/view/home_view.dart';

import '../helper/custom_animation.dart';

const homePath = '/';
const detailsPath = '/detailsPage';
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
    GoRoute(
      path: detailsPath,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => ChangeImageCubit(),
            ),
            BlocProvider(
              create: (_) => ChangeColorOrImageCubit(),
            ),
          ],
          child: const DetailsView(),
        ),
      ),
    ),
  ],
);
