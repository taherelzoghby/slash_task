import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../consts/strings.dart';

class HeaderSmartRefresh extends StatelessWidget {
  const HeaderSmartRefresh({
    super.key,
    required this.loadedLabel,
  });

  final String loadedLabel;

  @override
  Widget build(BuildContext context) {
    return WaterDropHeader(
      refresh: const CupertinoActivityIndicator(),
      failed: const Text(StringsEn.loadFailedClickRetry),
      complete: Text(
        loadedLabel,
      ),
    );
  }
}
