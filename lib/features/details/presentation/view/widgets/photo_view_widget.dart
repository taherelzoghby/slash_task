import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:slash_task/core/consts/data.dart';
import 'package:slash_task/core/widgets/loading_widget.dart';

class PhotoViewWidget extends StatefulWidget {
  const PhotoViewWidget({super.key, required this.ind});

  final int ind;

  @override
  State<PhotoViewWidget> createState() => _PhotoViewWidgetState();
}

class _PhotoViewWidgetState extends State<PhotoViewWidget> {
  PageController? controller;

  @override
  void initState() {
    controller = PageController(initialPage: widget.ind);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PhotoViewGallery.builder(
      scrollPhysics: const BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        return PhotoViewGalleryPageOptions(
          imageProvider: NetworkImage(items[index]),
          initialScale: PhotoViewComputedScale.contained * 0.8,
        );
      },
      itemCount: items.length,
      loadingBuilder: (context, event) => const LoadingWidget(),
      pageController: controller,
    );
  }
}
