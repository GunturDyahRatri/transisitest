import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constant.dart';

Color get textBlack => Pallets.textBlack;

class TextStyles {
  TextStyles._();

  static TextStyle body13({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle button({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.sp,
      color: Colors.white,
    );
  }

  static TextStyle input({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 13.sp,
      color: Colors.grey[500],
      // height: Dimensions.height60,
    );
  }

  static TextStyle text10({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle text12({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle title11({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 11.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle title13({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle title14({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle title16({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle title20({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.sp,
      color: color ?? Pallets.primary,
    );
  }

  static TextStyle title24({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24.sp,
      color: color ?? Pallets.primary,
    );
  }
}