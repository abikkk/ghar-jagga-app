import 'package:flutter/cupertino.dart';
import 'package:ghar_jagga/controllers/main_controller.dart';
import 'package:ghar_jagga/utils/custom_constants.dart';

class FunctionUtils {
  static void changePage(MainController mainController, int toPage) {
    mainController.pageController.animateToPage(toPage,
        duration: const Duration(milliseconds: CustomConstants.animationNormal),
        curve: Curves.easeInOut);
  }
}
