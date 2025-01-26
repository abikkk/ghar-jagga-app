import 'package:flutter/material.dart';

import '../../controllers/main_controller.dart';
import '../../utils/custom_app_bar.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key, required this.mainController});

  final MainController mainController;

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Favorites',
        actionWidgets: Container(),
      ),
    );
  }
}
