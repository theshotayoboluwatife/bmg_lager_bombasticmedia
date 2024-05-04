import 'package:flutter/material.dart';

enum CanStatus {
  gradeOne,
  gradeTwo,
  gradeThree,
}

extension CanStatusExtension on CanStatus {
  Color get color {
    switch (this) {
      case CanStatus.gradeOne:
        return const Color(0xff45e32c);
      case CanStatus.gradeTwo:
        return const Color(0xffff9f46);
      case CanStatus.gradeThree:
        return const Color(0xffff0000);
    }
  }
}

class AppColor {
  AppColor._();
  static Color red = const Color(0xfff40d0d);
  static Color blue = const Color(0xff18396b);
  static Color grey = const Color(0xff979797);
}
