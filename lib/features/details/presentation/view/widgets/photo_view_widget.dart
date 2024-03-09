import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewWidget extends StatelessWidget {
  const PhotoViewWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: NetworkImage(image),
    );
  }
}
