import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_task/core/consts/api_service.dart';
import 'package:slash_task/core/services/hive_db.dart';
import 'package:slash_task/core/services/local_datasource/get_products_local.dart';
import 'package:slash_task/core/services/remote_datasource/get_products_remote.dart';
import 'package:slash_task/core/services/service_locator.dart';
import 'package:slash_task/features/details/data/repos/details_repo_impl.dart';
import 'package:slash_task/features/details/presentation/view_model/get_colors_or_image_cubit/get_colors_or_image_cubit.dart';
import 'package:slash_task/features/details/presentation/view_model/get_images_swiper/get_images_swiper_cubit.dart';
import 'package:slash_task/features/details/presentation/view_model/get_product_cubit/get_product_cubit.dart';
import 'package:slash_task/features/home/data/repos/home_repo_impl.dart';
import 'package:slash_task/features/home/presentation/view_model/get_products_cubit/get_products_cubit.dart';
import '../../features/details/presentation/view/details_view.dart';
import '../../features/details/presentation/view_model/arrow_cubit/arrow_disc_cubit.dart';
import '../../features/details/presentation/view_model/change_color_cubit/change_color_or_image_cubit.dart';
import '../../features/details/presentation/view_model/change_image_cubit/change_image_cubit.dart';
import '../../features/details/presentation/view_model/change_material_cubit/change_material_cubit.dart';
import '../../features/details/presentation/view_model/change_size_cubit/change_size_cubit.dart';
import '../../features/home/presentation/view/home_view.dart';
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
        child: BlocProvider(
          create: (_) => GetProductsCubit(
            HomeReoImpl(
              getProductsLocal: GetProductsLocalImpl(
                hiveDb: HiveDb(),
              ),
              getProductsRemote: GetProductsRemoteImpl(
                apiService: getIt.get<ApiService>(),
                hiveDb: HiveDb(),
              ),
            ),
          )..getProducts(),
          child: const HomeView(),
        ),
      ),
    ),
    GoRoute(
      path: detailsPath,
      pageBuilder: (context, state) {
        int id = state.extra as int;
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => GetProductCubit(
                  DetailsRepoImpl(
                    apiService: getIt.get<ApiService>(),
                  ),
                )..getProduct(id),
              ),
              BlocProvider(
                create: (_) => ChangeImageCubit(),
              ),
              BlocProvider(
                create: (_) => GetImagesSwiperCubit(),
              ),
              BlocProvider(
                create: (_) => ChangeColorOrImageCubit(),
              ),
              BlocProvider(
                create: (context) => GetColorsOrImageCubit()
                  ..getColors(
                    context,
                  ),
              ),
              BlocProvider(
                create: (_) => ChangeSizeCubit(),
              ),
              BlocProvider(
                create: (_) => ChangeMaterialCubit(),
              ),
              BlocProvider(
                create: (_) => ArrowDiscCubit(),
              ),
            ],
            child: const DetailsView(),
          ),
        );
      },
    ),
  ],
);
