import 'package:flutter/material.dart';

import 'constant.dart';

class Decorations {
  Decorations._();

  static InputDecoration input({String? hintText, Widget? suffixIcon}) {
    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius10)),
    );
    return InputDecoration(
      suffixIcon: suffixIcon,
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      hintText: hintText,
      hintStyle: TextStyles.input(),
    );
  }
}

extension DecorationExtension on Widget {
  Widget rounded({double? topRight, double? bottomLeft}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: topRight == null ? Radius.zero : Radius.circular(topRight),
        bottomLeft:
            bottomLeft == null ? Radius.zero : Radius.circular(bottomLeft),
      ),
      child: this,
    );
  }
}