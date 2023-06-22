import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/controllers/main_controller.dart';
import 'package:ghar_jagga/utils/custom_nav_bar.dart';
import '../screens/modules/account_settings.dart';
import '../screens/modules/cart.dart';
import '../screens/modules/home.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  final MainController _controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller.pageController,
          children: <Widget>[
            Cart(mainController: _controller),
            HomeScreen(
              title: 'Ghar Jagga',
              subtitle: "Nepal's Real Estate",
              mainController: _controller,
            ),
            AccountSettings(mainController: _controller)
          ],
        ),
        CustomNavBar(
          mainController: _controller,
        )
      ],
    );
  }
}
