import 'package:flutter/material.dart';
import 'package:ghar_jagga/controllers/main_controller.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';
import 'package:ghar_jagga/utils/ui_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.mainController});

  final MainController mainController;
  final String title, subtitle;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UiUtils.customBox(
              height: 300,
              child: Stack(
                children: [
                  PageView(
                      controller: widget.mainController.featuredController,
                      children: [
                        for (int i = 0; i < 20; i++) UiUtils.customCard(i + 1)
                      ]),
                  UiUtils.customCardNavBtn(widget.mainController)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
