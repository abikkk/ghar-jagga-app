import 'package:flutter/material.dart';

class UiUtils {
  static SizedBox customBox({double? height, double? width, Widget? child}) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }

  static Container customContainer(
      {double? height,
      double? width,
      Color bgColor = Colors.transparent,
      double radius = 0.0,
      Widget? child}) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: child);
  }

  static Divider customHDivider(
      {double? height,
      Color? color,
      double? thick,
      double? indent,
      double? endIndent}) {
    return Divider(
      height: height,
      color: color,
      thickness: thick,
      indent: indent,
      endIndent: endIndent,
    );
  }

  static VerticalDivider customVDivider(
      {double? width,
      Color color = Colors.black54,
      double? thick,
      double? indent,
      double? endIndent}) {
    return VerticalDivider(
      width: width,
      color: color,
      thickness: thick,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
