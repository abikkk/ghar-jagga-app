import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controllers/main_controller.dart';
import '../utils/custom_constants.dart';

class FunctionUtils {
  static void changePage(MainController mainController, int toPage) {
    mainController.pageController.animateToPage(toPage,
        duration: const Duration(milliseconds: CustomConstants.animationNormal),
        curve: Curves.easeInOut);
  }

  static void changePropertyTypes(MainController mainController) {
    mainController.sortedProperties.value = mainController.allProperties
        .where((element) =>
            mainController.selectedFilters.contains(element.type.value))
        .toList();
    if (mainController.sortedProperties.isEmpty &&
        mainController.selectedFilters.isNotEmpty) {
      mainController.scaffoldMessengerKey.currentState
          ?.showSnackBar(const SnackBar(
        content: Text("Couldn't find properties!"),
      ));
    }
  }

  static void toggleFilters(MainController mainController, int propertyType) {
    if (mainController.selectedFilters.contains(propertyType)) {
      mainController.selectedFilters.remove(propertyType);
    } else {
      mainController.selectedFilters.add(propertyType);
    }
  }
}
