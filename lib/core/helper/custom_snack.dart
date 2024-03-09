import 'package:flutter/material.dart';

import '../consts/style.dart';

showSnack(
  BuildContext context, {
  required String message,
  Color background = AppConsts.success,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 2,
      backgroundColor: background,
      shape: RoundedRectangleBorder(
        borderRadius: AppConsts.radius15,
      ),
      content: Text(message),
      duration: const Duration(seconds: 1),
    ),
  );
}
