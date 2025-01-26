import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/function_utils.dart';
import '../controllers/main_controller.dart';
import 'ui_utils.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.mainController});

  final MainController mainController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CurvedNavigationBar(
        color: Colors.black54,
        backgroundColor: Colors.black26,
        index: mainController.navIndex.value,
        height: 45,
        key: mainController.bottomNavigationKey,
        animationDuration: const Duration(milliseconds: 222),
        items: const <Widget>[
          Icon(
            Icons.recommend_rounded,
            color: Colors.white70,
          ),
          Icon(
            Icons.home,
            color: Colors.white70,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white70,
          ),
          Icon(
            Icons.person,
            color: Colors.white70,
          ),
        ],
        onTap: (index) {
          mainController.pageController.animateToPage(index,
              duration: const Duration(milliseconds: 222),
              curve: Curves.easeInOut);
        },
      ),
    );
  }
}
