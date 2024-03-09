import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../../../../../core/consts/data.dart';
import '../../../../../core/consts/style.dart';
import '../../../../home/presentation/view/widgets/custom_product_image.dart';
import '../../view_model/change_image_cubit/change_image_cubit.dart';
import 'photo_view_widget.dart';

class SectionSwiper extends StatelessWidget {
  const SectionSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return BlocBuilder<ChangeImageCubit, ChangeImageState>(
      builder: (context, state) {
        ChangeImageCubit bloc = BlocProvider.of<ChangeImageCubit>(context);
        return AspectRatio(
          aspectRatio: AppConsts.aspect16on14,
          child: Swiper(
            index: bloc.index,
            loop: false,
            layout: SwiperLayout.CUSTOM,
            customLayoutOption: CustomLayoutOption(
              startIndex: 2,
              stateCount: 3,
            )
              ..addRotate(AppConsts.rotateSwiper)
              ..addTranslate(AppConsts.translateOffSet),
            itemWidth: size.width * .8,
            itemHeight: size.height * .35,
            curve: Curves.easeIn,
            onTap: (int val) => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => PhotoViewWidget(ind: val),
              ),
            ),
            onIndexChanged: (int value) => bloc.changeIndex(
              value: value,
            ),
            itemBuilder: (context, index) {
              return CustomProductImage(
                image: images[index],
              );
            },
            itemCount: images.length,
            controller: bloc.controller,
          ),
        );
      },
    );
  }
}
