import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghar_jagga/controllers/main_controller.dart';
import 'package:ghar_jagga/screens/account_settings.dart';
import 'package:ghar_jagga/screens/cart.dart';
import 'package:ghar_jagga/screens/home.dart';
import 'package:ghar_jagga/utils/custom_nav_bar.dart';

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
          children: const <Widget>[
            Cart(),
            HomeScreen(title: 'Ghar Jagga', subtitle: "Nepal's Real Estate"),
            AccountSettings()
          ],
        ),
        CustomNavBar(
          mainController: _controller,
        )
      ],
    );
  }
}
