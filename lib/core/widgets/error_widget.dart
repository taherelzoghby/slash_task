import 'package:flutter/material.dart';

import '../consts/assets.dart';
import '../helper/handle_image.dart';

class ErrorWidg extends StatelessWidget {
  const ErrorWidg({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * .1,
            child: const HandleImageWidget(image: AppAssets.error),
          ),
          Text(
            message,
          ),
        ],
      ),
    );
  }
}
