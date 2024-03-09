import 'package:flutter/material.dart';

abstract class AppConsts {
  static const Color backGroundColor = Color.fromRGBO(12, 12, 12, 1);
  static const Color buttonColor = Color.fromRGBO(173, 224, 41, 1);

  static const Color greyBlackDarkColor = Color.fromRGBO(48, 48, 48, 1);
  static const Color greyBlackLightColor = Color.fromRGBO(155, 155, 155, 1);
  static const Color greyBlackVeryLightColor = Color.fromRGBO(232, 232, 232, 1);
  static const Color white = Colors.white;
  static const Color success = Color.fromRGBO(143, 220, 96, 1);
  //aspect ratio
  static const double aspect16on2 = 16 / 2;
  static const double aspect16on14 = 16 / 14;
  static const double aspect16on13 = 16 / 13;
  static const double aspect16on1 = 16 / 1;
  static const double aspect20on36 = 20 / 36;
  static const double aspect20on2 = 20 / 2;
  static const double aspect16on4 = 16 / 4;
  static const double aspect16on5 = 16 / 5;
  static const double aspect16on3 = 16 / 3;
  static const double aspect16on8 = 16 / 8;
  static const double aspect40on1 = 40 / 1;
  static const double aspect300on1 = 300 / 1;
  static const double aspectRatioButtonAuth = 3 / .4;
  static const double aspectRatioButtonApply = 2.1 / .65;
  static const double aspect13on8 = 13 / 8;
  static const double aspect13on9 = 13 / 9;
  static const double aspect13on10 = 13 / 10;
  static const double aspect13on5 = 13 / 5;
  static const double aspect10on19 = 10 / 19;
  static const double aspect16on7 = 16 / 7;
  static const double aspect2point5on3 = 2.5 / 3;
  static const double halfScreenHeight = 565;

  //padding
  static const EdgeInsets mainPadding = EdgeInsets.symmetric(horizontal: 15);
  static const EdgeInsets passing25 = EdgeInsets.symmetric(horizontal: 25);
  static const EdgeInsets padding10Horiz = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets padding10h8v = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 8,
  );
  static const EdgeInsets allPadding8 = EdgeInsets.all(8);
  static const EdgeInsets allPadding15 = EdgeInsets.all(15);
  static const EdgeInsets verticalPadding5 = EdgeInsets.symmetric(vertical: 5);
  static const EdgeInsets verticalPadding10 = EdgeInsets.symmetric(
    vertical: 10,
  );
  static const EdgeInsets topPadding20 = EdgeInsets.only(top: 20);
  static const EdgeInsets paddH40 = EdgeInsets.symmetric(horizontal: 40);

//radius
  static BorderRadius radius8 = BorderRadius.circular(8);
  static BorderRadius radius15 = BorderRadius.circular(15);
  static BorderRadius radius25 = BorderRadius.circular(25);
  static BorderRadius radius40 = BorderRadius.circular(40);
  static BorderRadius radius100 = BorderRadius.circular(100);

//styles
  static const List<BoxShadow> buttonShadow = [
    BoxShadow(
      color: AppConsts.white,
      offset: Offset(0, 1.5),
    ),
  ];
}
