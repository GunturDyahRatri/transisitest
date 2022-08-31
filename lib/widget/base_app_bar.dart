import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    Key? key,
    required this.elevation,
    required this.toolbarHeight,
    required this.dark,
    required this.backgroundColor,
  }) : super(key: key);

  final double? elevation;
  final double toolbarHeight;
  final bool dark;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:
          dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      elevation: elevation ?? 0,
      backgroundColor: backgroundColor ?? Colors.transparent,
    );
  }

  @override
  Size get preferredSize => throw Size.fromHeight(toolbarHeight);
}
