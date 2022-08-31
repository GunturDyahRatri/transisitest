import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimensions {
  Dimensions._();

  static double get defaultPadding16 => 16.0.w;
  static double get defaultPadding => 24.0.w;
  static double get radius10 => 10.0.r;
  static double get radius20 => 20.0.r;
  static double get radius50 => 50.0.r;
  static double get radiusDiv3 => (ScreenUtil().screenWidth / 3).r;

  static double get height8 => 8.0.h;
  static double get height12 => 12.0.h;
  static double get height14 => 14.0.h;
  static double get height16 => 16.0.h;
  static double get height30 => 30.0.h;
  static double get height40 => 40.0.h;
  static double get height50 => 50.0.h;
  static double get height60 => 60.0.h;
  static double get height100 => 100.0.h;

  static double get width8 => 8.0.w;
  static double get width20 => 20.0.w;
  static double get width40 => 40.0.w;
  static double get width200 => 200.0.w;

  static EdgeInsets pad({
    double? all,
    double? horizontal,
    double? vertical,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return EdgeInsets.only(
      left: all ?? horizontal ?? left,
      right: all ?? horizontal ?? right,
      top: all ?? vertical ?? top,
      bottom: all ?? vertical ?? bottom,
    );
  }
}

extension DimensionExtension on Widget {
  Widget get defaultPaddingW => paddingH(Dimensions.defaultPadding);
  Widget get paddingW8 => paddingH(Dimensions.width8);

  Widget paddingH(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }

  Widget safeArea({bool top = true, bool bottom = true}) {
    return SafeArea(
      top: top,
      bottom: bottom,
      child: this,
    );
  }

  Widget aspectRatio({double? aspectRatio}) {
    if (aspectRatio == null) {
      return this;
    }
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: this,
    );
  }

  Widget positioned({
    double? all,
    double? horizontal,
    double? vertical,
    bool topRight = false,
    bool bottomLeft = false,
    double? topRightPadding,
    double? bottomLeftPadding,
    // double left = 0.0,
    // double top = 0.0,
    // double right = 0.0,
    // double bottom = 0.0,
  }) {
    double? left = bottomLeft ? (bottomLeftPadding ?? 0.0) : null;
    double? top = topRight ? (topRightPadding ?? 0.0) : null;
    double? right = topRight ? (topRightPadding ?? 0.0) : null;
    double? bottom = bottomLeft ? (bottomLeftPadding ?? 0.0) : null;
    return Positioned(
      left: all ?? horizontal ?? left,
      right: all ?? horizontal ?? right,
      top: all ?? vertical ?? top,
      bottom: all ?? vertical ?? bottom,
      child: this,
    );
  }

  Widget pad({
    double? all,
    double? horizontal,
    double? vertical,
    double? bottomLeft,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Container(
      padding: Dimensions.pad(
        all: all,
        horizontal: horizontal,
        vertical: vertical,
        left: bottomLeft ?? left,
        top: top,
        right: right,
        bottom: bottomLeft ?? bottom,
      ),
      child: this,
    );
  }
}