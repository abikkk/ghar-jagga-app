import 'package:flutter/material.dart';
import 'custom_app_theme_data.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.actionWidgets});

  final String title;
  final Widget? actionWidgets;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: CustomAppThemeData.appThemeData.textTheme.titleSmall!,
      ),
      toolbarHeight: 45,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [actionWidgets ?? Container()],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(77);
}
