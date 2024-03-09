import 'package:flutter/cupertino.dart';

import '../consts/style.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(
        color: AppConsts.white,
      ),
    );
  }
}
