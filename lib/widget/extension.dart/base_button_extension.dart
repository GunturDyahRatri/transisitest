import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension ButtonExtension on Widget {
  Widget cupertino({Function()? onPressed}) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: this,
    );
  }

  Widget inkWell({Function()? onPressed, EdgeInsets? padding, double? radius}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: radius != null ? BorderRadius.circular(radius) : null,
      child: Container(
        padding: padding ?? EdgeInsets.zero,
        child: this,
      ),
    );
  }

  Widget gesture({Function()? onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: this,
    );
  }

  Widget gestured({Function()? onPressed}) {
    if (kReleaseMode) return this;
    return gesture(onPressed: onPressed);
  }
}
