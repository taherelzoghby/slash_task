import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'header_smart_refresh.dart';

class SmartRefreshWidget extends StatelessWidget {
  const SmartRefreshWidget({
    super.key,
    required this.refreshController,
    this.onRefresh,
    required this.child,
  });

  final RefreshController refreshController;
  final void Function()? onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      header: HeaderSmartRefresh(
        loadedLabel: 'labelLoaded',
      ),
      controller: refreshController,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
