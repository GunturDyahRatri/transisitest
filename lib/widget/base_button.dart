import 'package:flutter/material.dart';

import '../constant/constant.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.text,
    this.width,
    this.height,
    this.onPressed,
    this.radius,
    this.color,
  }) : super(key: key);

  final String text;
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: radius != null
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius!),
                )
              : null,
          primary: color ?? Pallets.primary,
          textStyle: TextStyles.button(),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
