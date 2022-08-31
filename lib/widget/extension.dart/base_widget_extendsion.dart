import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:shimmer/shimmer.dart';

extension BaseWidgetExtension on Widget{
   Widget actionRefresh({
    required Function()? onRefresh,
    bool addScroll = false,
  }) {
    if (addScroll) {
      return Stack(
        children: [
          this,
          RefreshIndicator(
            onRefresh: () async => onRefresh?.call(),
            child: ListView(),
          ),
        ],
      );
    }
    return RefreshIndicator(
      onRefresh: () async => onRefresh?.call(),
      child: this,
    );
  }

  Widget shimmer({bool? anim}) {
    if (anim == false) return this;
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: this,
    );
  }

  Widget tooltip(String? text) {
    if (text?.isEmpty ?? true) return this;
    return JustTheTooltip(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text!,
        ),
      ),
      preferredDirection: AxisDirection.up,
      tailLength: 50,
      triggerMode: TooltipTriggerMode.tap,
      child: this,
    );
  }

  Widget hide({bool show = false}) => show ? this : Container();
  Widget get h => Container();

  Widget get ih => IntrinsicHeight(child: this);
}